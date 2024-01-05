﻿using Darkages.CommandSystem;
using Darkages.CommandSystem.CLI;
using Darkages.Database;
using Darkages.Interfaces;
using Darkages.Models;
using Darkages.Network.Server;
using Darkages.Sprites;
using Darkages.Templates;
using Darkages.Types;

using Microsoft.AppCenter.Crashes;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

using System.Collections.Concurrent;
using System.Collections.Frozen;
using System.Data;
using System.Net;
using System.Reflection;
using Chaos.Common.Identity;
using Microsoft.Data.SqlClient;
using RestSharp;

namespace Darkages;

public class ServerSetup : IServerContext
{
    public static ServerSetup Instance { get; private set; }
    public static readonly object SyncLock = new();
    private static readonly object LogLock = new();
    private static Board[] _huntingToL = new Board[1];
    private static Board[] _trashTalk = new Board[1];
    private static Board[] _arenaUpdates = new Board[1];
    public static Board[] PersonalBoards = new Board[3];
    private static Board[] _serverUpdates = new Board[1];
    private static ILogger<ServerSetup> _log;
    public static IOptions<ServerOptions> ServerOptions;
    public readonly RestClient RestClient;
    public readonly RestClient RestReport;

    public bool Running { get; set; }
    public SqlConnection ServerSaveConnection { get; set; }
    public IServerConstants Config { get; set; }
    public WorldServer Game { get; set; }
    public LoginServer LoginServer { get; set; }
    public LobbyServer LobbyServer { get; set; }
    public CommandParser Parser { get; set; }
    public string StoragePath { get; set; }
    public string MoonPhase { get; set; }
    public byte LightPhase { get; set; }
    public byte LightLevel { get; set; }
    public string KeyCode { get; set; }
    public string Unlock { get; set; }
    public IPAddress IpAddress { get; set; }
    public string GmA { get; set; }
    public string GmB { get; set; }
    public string InternalAddress { get; set; }

    // Templates
    public FrozenDictionary<int, WorldMapTemplate> GlobalWorldMapTemplateCache { get; set; }
    public Dictionary<int, WorldMapTemplate> TempGlobalWorldMapTemplateCache { get; set; } = new();
    public FrozenDictionary<int, WarpTemplate> GlobalWarpTemplateCache { get; set; }
    public Dictionary<int, WarpTemplate> TempGlobalWarpTemplateCache { get; set; } = new();
    public FrozenDictionary<string, SkillTemplate> GlobalSkillTemplateCache { get; set; }
    public Dictionary<string, SkillTemplate> TempGlobalSkillTemplateCache { get; set; } = new();
    public FrozenDictionary<string, SpellTemplate> GlobalSpellTemplateCache { get; set; }
    public Dictionary<string, SpellTemplate> TempGlobalSpellTemplateCache { get; set; } = new();
    public FrozenDictionary<string, ItemTemplate> GlobalItemTemplateCache { get; set; }
    public Dictionary<string, ItemTemplate> TempGlobalItemTemplateCache { get; set; } = new();
    public FrozenDictionary<string, NationTemplate> GlobalNationTemplateCache { get; set; }
    public Dictionary<string, NationTemplate> TempGlobalNationTemplateCache { get; set; } = new();
    public FrozenDictionary<string, MonsterTemplate> GlobalMonsterTemplateCache { get; set; }
    public Dictionary<string, MonsterTemplate> TempGlobalMonsterTemplateCache { get; set; } = new();
    public FrozenDictionary<string, MundaneTemplate> GlobalMundaneTemplateCache { get; set; }
    public Dictionary<string, MundaneTemplate> TempGlobalMundaneTemplateCache { get; set; } = new();
    public FrozenDictionary<uint, string> GlobalKnownGoodActorsCache { get; set; }
    public Dictionary<uint, string> TempGlobalKnownGoodActorsCache { get; set; } = new();
    
    // Live
    public ConcurrentDictionary<int, Area> GlobalMapCache { get; set; } = new();
    public ConcurrentDictionary<string, Buff> GlobalBuffCache { get; set; } = new();
    public ConcurrentDictionary<string, Debuff> GlobalDeBuffCache { get; set; } = new();
    public ConcurrentDictionary<long, BoardTemplate> GlobalBoardPostCache { get; set; } = new();
    public ConcurrentDictionary<int, Party> GlobalGroupCache { get; set; } = new();
    public ConcurrentDictionary<uint, Monster> GlobalMonsterCache { get; set; } = new();
    public ConcurrentDictionary<uint, Mundane> GlobalMundaneCache { get; set; } = new();
    public ConcurrentDictionary<long, Item> GlobalGroundItemCache { get; set; } = new();
    public ConcurrentDictionary<long, Item> GlobalSqlItemCache { get; set; } = new();
    public ConcurrentDictionary<int, IDictionary<Type, object>> SpriteCollections { get; set; } = new();
    public ConcurrentDictionary<uint, Trap> Traps { get; set; } = new();
    public ConcurrentDictionary<IPAddress, IPAddress> GlobalLobbyConnection { get; set; } = new();
    public ConcurrentDictionary<IPAddress, IPAddress> GlobalLoginConnection { get; set; } = new();
    public ConcurrentDictionary<IPAddress, IPAddress> GlobalWorldConnection { get; set; } = new();

    public ServerSetup(IOptions<ServerOptions> options)
    {
        Instance = this;
        ServerOptions = options;
        StoragePath = ServerOptions.Value.Location;
        KeyCode = ServerOptions.Value.KeyCode;
        Unlock = ServerOptions.Value.Unlock;
        InternalAddress = ServerOptions.Value.InternalIp;
        GmA = ServerOptions.Value.GmA;
        GmB = ServerOptions.Value.GmB;
        var restSettings = SetupRestClients();
        RestClient = new RestClient(restSettings.Item1);
        RestReport = new RestClient(restSettings.Item2);
    }

    public static void Logger(string logMessage, LogLevel logLevel = LogLevel.Information)
    {
        _log?.Log(logLevel, "{logMessage}", logMessage);
    }

    private static (RestClientOptions, RestClientOptions) SetupRestClients()
    {
        var optionsCheck = new RestClientOptions("https://api.abuseipdb.com/api/v2/check")
        {
            ThrowOnAnyError = true,
            MaxTimeout = 5000
        };
        var optionsReport = new RestClientOptions("https://api.abuseipdb.com/api/v2/report")
        {
            ThrowOnAnyError = true,
            MaxTimeout = 5000
        };

        return (optionsCheck, optionsReport);
    }

    public void InitFromConfig(string storagePath, string ipAddress)
    {
        IpAddress = IPAddress.Parse(ipAddress);
        StoragePath = storagePath;

        if (StoragePath != null && !Directory.Exists(StoragePath))
            Directory.CreateDirectory(StoragePath);
    }

    public void Start(IServerConstants config, ILogger<ServerSetup> logger)
    {
        Config = config;
        _log = logger;
        Commander.CompileCommands();
        Startup();
        CommandHandler();
        DatabaseSaveConnection();
    }

    public void Startup()
    {
        try
        {
            LoadAndCacheStorage();
        }
        catch (Exception ex)
        {
            Logger(ex.Message, LogLevel.Error);
            Logger(ex.StackTrace, LogLevel.Error);
            Crashes.TrackError(ex);
        }
    }

    public void LoadAndCacheStorage()
    {
        Console.ForegroundColor = ConsoleColor.Yellow;
        AreaStorage.Instance.CacheFromDatabase();
        DatabaseLoad.CacheFromDatabase(new WorldMapTemplate());
        DatabaseLoad.CacheFromDatabase(new WarpTemplate());
        DatabaseLoad.CacheFromDatabase(new SkillTemplate());
        DatabaseLoad.CacheFromDatabase(new SpellTemplate());
        DatabaseLoad.CacheFromDatabase(new ItemTemplate());
        DatabaseLoad.CacheFromDatabase(new NationTemplate());
        DatabaseLoad.CacheFromDatabase(new MonsterTemplate());
        DatabaseLoad.CacheFromDatabase(new MundaneTemplate());
        DatabaseLoad.CacheFromDatabase(new BoardTemplate());
        //CacheCommunityAssets();
        BindTemplates();
        // ToDo: If decompiling templates, comment out LoadMetaDatabase();
        //MetafileManager.DecompileTemplates();
        LoadExtensions();
    }

    public void BindTemplates()
    {
        foreach (var spell in GlobalSpellTemplateCache.Values)
            spell.Prerequisites?.AssociatedWith(spell);
        foreach (var skill in GlobalSkillTemplateCache.Values)
            skill.Prerequisites?.AssociatedWith(skill);
    }

    public void CacheCommunityAssets()
    {
        //if (PersonalBoards == null) return;
        //var dirs = Directory.GetDirectories(Path.Combine(StoragePath, "Community\\Boards"));
        //var tmpBoards = new Dictionary<string, List<Board>>();

        //foreach (var dir in dirs.Select(i => new DirectoryInfo(i)))
        //{
        //    var boards = Board.CacheFromStorage(dir.FullName);

        //    if (boards == null) continue;

        //    if (dir.Name == "Personal")
        //        if (boards.Find(i => i.Index == 0) == null)
        //            boards.Add(new Board("Mail", 0, true));

        //    if (!tmpBoards.ContainsKey(dir.Name)) tmpBoards[dir.Name] = new List<Board>();

        //    tmpBoards[dir.Name].AddRange(boards);
        //}

        //PersonalBoards = tmpBoards["Personal"].OrderBy(i => i.Index).ToArray();
        //_huntingToL = tmpBoards["Hunting"].OrderBy(i => i.Index).ToArray();
        //_arenaUpdates = tmpBoards["Arena Updates"].OrderBy(i => i.Index).ToArray();
        //_trashTalk = tmpBoards["Trash Talk"].OrderBy(i => i.Index).ToArray();
        //_serverUpdates = tmpBoards["Server Updates"].OrderBy(i => i.Index).ToArray();

        //foreach (var (key, value) in tmpBoards)
        //{
        //    if (!GlobalBoardCache.ContainsKey(key)) GlobalBoardCache[key] = new List<Board>();

        //    GlobalBoardCache[key].AddRange(value);
        //}
    }

    public void LoadExtensions()
    {
        CacheBuffs();
        Logger($"Buff Cache: {GlobalBuffCache.Count}");
        CacheDebuffs();
        Logger($"Debuff Cache: {GlobalDeBuffCache.Count}");
    }

    public void CacheBuffs()
    {
        var buffType = typeof(Buff);
        var listOfBuffs = Assembly.GetExecutingAssembly()
            .GetTypes()
            .Where(t => buffType.IsAssignableFrom(t) && !t.IsAbstract && !t.IsInterface);

        foreach (var buff in listOfBuffs)
        {
            if (buff.Name == "Buff") continue;
            if (GlobalBuffCache == null) continue;
            if (Activator.CreateInstance(buff) is Buff buffInstance)
            {
                GlobalBuffCache[buff.Name] = buffInstance;
            }
        }
    }

    public void CacheDebuffs()
    {
        var debuffType = typeof(Debuff);
        var listOfDebuffs = Assembly.GetExecutingAssembly()
            .GetTypes()
            .Where(t => debuffType.IsAssignableFrom(t) && !t.IsAbstract && !t.IsInterface);

        foreach (var debuff in listOfDebuffs)
        {
            if (debuff.Name == "Debuff") continue;
            if (GlobalDeBuffCache == null) continue;
            if (Activator.CreateInstance(debuff) is Debuff debuffInstance)
            {
                GlobalDeBuffCache[debuff.Name] = debuffInstance;
            }
        }
    }

    public void CommandHandler()
    {
        Console.WriteLine();
        Console.ForegroundColor = ConsoleColor.DarkBlue;
        Console.WriteLine("GM Commands");
        Console.ForegroundColor = ConsoleColor.Magenta;

        foreach (var command in Parser.Commands)
        {
            Console.WriteLine(command.ShowHelp(), LogLevel.Debug);
        }
    }

    public void DatabaseSaveConnection()
    {
        ServerSaveConnection = new SqlConnection(AislingStorage.ConnectionString);
        ServerSaveConnection.Open();

        if (ServerSaveConnection.State == ConnectionState.Open)
        {
            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine("Player Save-State Connected");
        }
        else
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("Issue connecting to database");
        }

        SetGoodActors();
    }

    public void SetGoodActors()
    {
        const string sql = "SELECT LastIP FROM ZolianPlayers.dbo.Players";
        var cmd = new SqlCommand(sql, ServerSaveConnection);
        cmd.CommandTimeout = 5;
        var reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            var iP = reader["LastIP"].ToString();
            TempGlobalKnownGoodActorsCache.TryAdd(EphemeralRandomIdGenerator<uint>.Shared.NextId, iP);
        }

        GlobalKnownGoodActorsCache = TempGlobalKnownGoodActorsCache.ToFrozenDictionary();
        TempGlobalKnownGoodActorsCache.Clear();
    }

    public static void SaveCommunityAssets()
    {
        //lock (SyncLock)
        //{
        //    var tmp = new List<Board>(_arenaUpdates);
        //    var tmp1 = new List<Board>(_huntingToL);
        //    var tmp2 = new List<Board>(PersonalBoards);
        //    var tmp3 = new List<Board>(_serverUpdates);
        //    var tmp4 = new List<Board>(_trashTalk);

        //    foreach (var asset in tmp)
        //    {
        //        asset.Save("Arena Updates");
        //    }

        //    foreach (var asset in tmp1)
        //    {
        //        asset.Save("Hunting");
        //    }

        //    foreach (var asset in tmp2)
        //    {
        //        asset.Save("Personal");
        //    }

        //    foreach (var asset in tmp3)
        //    {
        //        asset.Save("Server Updates");
        //    }

        //    foreach (var asset in tmp4)
        //    {
        //        asset.Save("Trash Talk");
        //    }
        //}
    }
}