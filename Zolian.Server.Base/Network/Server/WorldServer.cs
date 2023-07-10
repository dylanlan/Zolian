using System.Collections.Concurrent;
using System.Net;
using System.Net.Sockets;
using System.Numerics;

using Chaos.Collections.Common;
using Chaos.Common.Definitions;
using Chaos.Common.Identity;
using Chaos.Cryptography;
using Chaos.Extensions.Common;
using Chaos.Networking.Abstractions;
using Chaos.Networking.Entities.Client;
using Chaos.Packets;
using Chaos.Packets.Abstractions;
using Chaos.Packets.Abstractions.Definitions;

using Darkages.Common;
using Darkages.Database;
using Darkages.Enums;
using Darkages.Models;
using Darkages.Network.Client;
using Darkages.Network.Client.Abstractions;
using Darkages.Network.Components;
using Darkages.Object;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Systems;
using Darkages.Templates;
using Darkages.Types;

using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;
using Microsoft.Extensions.Logging;
using ServiceStack;
using ConnectionInfo = Chaos.Networking.Options.ConnectionInfo;
using MapFlags = Darkages.Enums.MapFlags;
using Redirect = Chaos.Networking.Entities.Redirect;
using Stat = Chaos.Common.Definitions.Stat;

namespace Darkages.Network.Server;

public sealed class WorldServer : ServerBase<IWorldClient>, IWorldServer<IWorldClient>
{
    private readonly IClientFactory<WorldClient> ClientProvider;
    private ConcurrentDictionary<Type, WorldServerComponent> _serverComponents;
    private static Dictionary<(Race race, Class path, Class pastClass), string> _skillMap = new();
    public readonly ObjectService ObjectFactory = new();
    public readonly ObjectManager ObjectHandlers = new();
    private DateTime _gameSpeed;
    private DateTime _spriteSpeed;
    private const int GameSpeed = 30;
    private const int SpriteSpeed = 50;

    public IEnumerable<Aisling> Aislings => ClientRegistry
                                            .Select(c => c.Aisling)
                                            .Where(player => player != null!);

    public WorldServer(
        IClientRegistry<IWorldClient> clientRegistry,
        IClientFactory<WorldClient> clientProvider,
        IRedirectManager redirectManager,
        IPacketSerializer packetSerializer,
        Microsoft.Extensions.Options.IOptions<Chaos.Networking.Options.ServerOptions> options,
        ILogger<WorldServer> logger
    )
        : base(
            redirectManager,
            packetSerializer,
            clientRegistry,
            options,
            logger)
    {
        ClientProvider = clientProvider;
        IndexHandlers();
        SkillMapper();
        RegisterServerComponents();
    }

    #region Server Init

    private void RegisterServerComponents()
    {
        lock (ServerSetup.SyncLock)
        {
            _serverComponents = new ConcurrentDictionary<Type, WorldServerComponent>
            {
                [typeof(InterestAndCommunityComponent)] = new InterestAndCommunityComponent(this),
                [typeof(MessageClearComponent)] = new MessageClearComponent(this),
                [typeof(MonolithComponent)] = new MonolithComponent(this),
                [typeof(MundaneComponent)] = new MundaneComponent(this),
                [typeof(ObjectComponent)] = new ObjectComponent(this),
                [typeof(PingComponent)] = new PingComponent(this),
                [typeof(PlayerRegenerationComponent)] = new PlayerRegenerationComponent(this),
                [typeof(PlayerSaveComponent)] = new PlayerSaveComponent(this),
                [typeof(MoonPhaseComponent)] = new MoonPhaseComponent(this)
            };

            ServerSetup.Logger($"Server Components Loaded: {_serverComponents.Count}");
        }
    }

    private static void SkillMapper()
    {
        _skillMap = new Dictionary<(Race race, Class path, Class pastClass), string>
        {
            {(Race.Human, Class.Berserker, Class.Berserker), "SClass1"},
            {(Race.Human, Class.Berserker, Class.Defender), "SClass2"},
            {(Race.Human, Class.Berserker, Class.Assassin), "SClass3"},
            {(Race.Human, Class.Berserker, Class.Cleric), "SClass4"},
            {(Race.Human, Class.Berserker, Class.Arcanus), "SClass5"},
            {(Race.Human, Class.Berserker, Class.Monk), "SClass6"},
            {(Race.Human, Class.Defender, Class.Berserker), "SClass7"},
            {(Race.Human, Class.Defender, Class.Defender), "SClass8"},
            {(Race.Human, Class.Defender, Class.Assassin), "SClass9"},
            {(Race.Human, Class.Defender, Class.Cleric), "SClass10"},
            {(Race.Human, Class.Defender, Class.Arcanus), "SClass11"},
            {(Race.Human, Class.Defender, Class.Monk), "SClass12"},
            {(Race.Human, Class.Assassin, Class.Berserker), "SClass13"},
            {(Race.Human, Class.Assassin, Class.Defender), "SClass14"},
            {(Race.Human, Class.Assassin, Class.Assassin), "SClass15"},
            {(Race.Human, Class.Assassin, Class.Cleric), "SClass16"},
            {(Race.Human, Class.Assassin, Class.Arcanus), "SClass17"},
            {(Race.Human, Class.Assassin, Class.Monk), "SClass18"},
            {(Race.Human, Class.Cleric, Class.Berserker), "SClass19"},
            {(Race.Human, Class.Cleric, Class.Defender), "SClass20"},
            {(Race.Human, Class.Cleric, Class.Assassin), "SClass21"},
            {(Race.Human, Class.Cleric, Class.Cleric), "SClass22"},
            {(Race.Human, Class.Cleric, Class.Arcanus), "SClass23"},
            {(Race.Human, Class.Cleric, Class.Monk), "SClass24"},
            {(Race.Human, Class.Arcanus, Class.Berserker), "SClass25"},
            {(Race.Human, Class.Arcanus, Class.Defender), "SClass26"},
            {(Race.Human, Class.Arcanus, Class.Assassin), "SClass27"},
            {(Race.Human, Class.Arcanus, Class.Cleric), "SClass28"},
            {(Race.Human, Class.Arcanus, Class.Arcanus), "SClass29"},
            {(Race.Human, Class.Arcanus, Class.Monk), "SClass30"},
            {(Race.Human, Class.Monk, Class.Berserker), "SClass31"},
            {(Race.Human, Class.Monk, Class.Defender), "SClass32"},
            {(Race.Human, Class.Monk, Class.Assassin), "SClass33"},
            {(Race.Human, Class.Monk, Class.Cleric), "SClass34"},
            {(Race.Human, Class.Monk, Class.Arcanus), "SClass35"},
            {(Race.Human, Class.Monk, Class.Monk), "SClass36"},
            {(Race.HalfElf, Class.Berserker, Class.Berserker), "SClass37"},
            {(Race.HalfElf, Class.Berserker, Class.Defender), "SClass38"},
            {(Race.HalfElf, Class.Berserker, Class.Assassin), "SClass39"},
            {(Race.HalfElf, Class.Berserker, Class.Cleric), "SClass40"},
            {(Race.HalfElf, Class.Berserker, Class.Arcanus), "SClass41"},
            {(Race.HalfElf, Class.Berserker, Class.Monk), "SClass42"},
            {(Race.HalfElf, Class.Defender, Class.Berserker), "SClass43"},
            {(Race.HalfElf, Class.Defender, Class.Defender), "SClass44"},
            {(Race.HalfElf, Class.Defender, Class.Assassin), "SClass45"},
            {(Race.HalfElf, Class.Defender, Class.Cleric), "SClass46"},
            {(Race.HalfElf, Class.Defender, Class.Arcanus), "SClass47"},
            {(Race.HalfElf, Class.Defender, Class.Monk), "SClass48"},
            {(Race.HalfElf, Class.Assassin, Class.Berserker), "SClass49"},
            {(Race.HalfElf, Class.Assassin, Class.Defender), "SClass50"},
            {(Race.HalfElf, Class.Assassin, Class.Assassin), "SClass51"},
            {(Race.HalfElf, Class.Assassin, Class.Cleric), "SClass52"},
            {(Race.HalfElf, Class.Assassin, Class.Arcanus), "SClass53"},
            {(Race.HalfElf, Class.Assassin, Class.Monk), "SClass54"},
            {(Race.HalfElf, Class.Cleric, Class.Berserker), "SClass55"},
            {(Race.HalfElf, Class.Cleric, Class.Defender), "SClass56"},
            {(Race.HalfElf, Class.Cleric, Class.Assassin), "SClass57"},
            {(Race.HalfElf, Class.Cleric, Class.Cleric), "SClass58"},
            {(Race.HalfElf, Class.Cleric, Class.Arcanus), "SClass59"},
            {(Race.HalfElf, Class.Cleric, Class.Monk), "SClass60"},
            {(Race.HalfElf, Class.Arcanus, Class.Berserker), "SClass61"},
            {(Race.HalfElf, Class.Arcanus, Class.Defender), "SClass62"},
            {(Race.HalfElf, Class.Arcanus, Class.Assassin), "SClass63"},
            {(Race.HalfElf, Class.Arcanus, Class.Cleric), "SClass64"},
            {(Race.HalfElf, Class.Arcanus, Class.Arcanus), "SClass65"},
            {(Race.HalfElf, Class.Arcanus, Class.Monk), "SClass66"},
            {(Race.HalfElf, Class.Monk, Class.Berserker), "SClass67"},
            {(Race.HalfElf, Class.Monk, Class.Defender), "SClass68"},
            {(Race.HalfElf, Class.Monk, Class.Assassin), "SClass69"},
            {(Race.HalfElf, Class.Monk, Class.Cleric), "SClass70"},
            {(Race.HalfElf, Class.Monk, Class.Arcanus), "SClass71"},
            {(Race.HalfElf, Class.Monk, Class.Monk), "SClass72"},
            {(Race.HighElf, Class.Berserker, Class.Berserker), "SClass73"},
            {(Race.HighElf, Class.Berserker, Class.Defender), "SClass74"},
            {(Race.HighElf, Class.Berserker, Class.Assassin), "SClass75"},
            {(Race.HighElf, Class.Berserker, Class.Cleric), "SClass76"},
            {(Race.HighElf, Class.Berserker, Class.Arcanus), "SClass77"},
            {(Race.HighElf, Class.Berserker, Class.Monk), "SClass78"},
            {(Race.HighElf, Class.Defender, Class.Berserker), "SClass79"},
            {(Race.HighElf, Class.Defender, Class.Defender), "SClass80"},
            {(Race.HighElf, Class.Defender, Class.Assassin), "SClass81"},
            {(Race.HighElf, Class.Defender, Class.Cleric), "SClass82"},
            {(Race.HighElf, Class.Defender, Class.Arcanus), "SClass83"},
            {(Race.HighElf, Class.Defender, Class.Monk), "SClass84"},
            {(Race.HighElf, Class.Assassin, Class.Berserker), "SClass85"},
            {(Race.HighElf, Class.Assassin, Class.Defender), "SClass86"},
            {(Race.HighElf, Class.Assassin, Class.Assassin), "SClass87"},
            {(Race.HighElf, Class.Assassin, Class.Cleric), "SClass88"},
            {(Race.HighElf, Class.Assassin, Class.Arcanus), "SClass89"},
            {(Race.HighElf, Class.Assassin, Class.Monk), "SClass90"},
            {(Race.HighElf, Class.Cleric, Class.Berserker), "SClass91"},
            {(Race.HighElf, Class.Cleric, Class.Defender), "SClass92"},
            {(Race.HighElf, Class.Cleric, Class.Assassin), "SClass93"},
            {(Race.HighElf, Class.Cleric, Class.Cleric), "SClass94"},
            {(Race.HighElf, Class.Cleric, Class.Arcanus), "SClass95"},
            {(Race.HighElf, Class.Cleric, Class.Monk), "SClass96"},
            {(Race.HighElf, Class.Arcanus, Class.Berserker), "SClass97"},
            {(Race.HighElf, Class.Arcanus, Class.Defender), "SClass98"},
            {(Race.HighElf, Class.Arcanus, Class.Assassin), "SClass99"},
            {(Race.HighElf, Class.Arcanus, Class.Cleric), "SClass100"},
            {(Race.HighElf, Class.Arcanus, Class.Arcanus), "SClass101"},
            {(Race.HighElf, Class.Arcanus, Class.Monk), "SClass102"},
            {(Race.HighElf, Class.Monk, Class.Berserker), "SClass103"},
            {(Race.HighElf, Class.Monk, Class.Defender), "SClass104"},
            {(Race.HighElf, Class.Monk, Class.Assassin), "SClass105"},
            {(Race.HighElf, Class.Monk, Class.Cleric), "SClass106"},
            {(Race.HighElf, Class.Monk, Class.Arcanus), "SClass107"},
            {(Race.HighElf, Class.Monk, Class.Monk), "SClass108"},
            {(Race.DarkElf, Class.Berserker, Class.Berserker), "SClass109"},
            {(Race.DarkElf, Class.Berserker, Class.Defender), "SClass110"},
            {(Race.DarkElf, Class.Berserker, Class.Assassin), "SClass111"},
            {(Race.DarkElf, Class.Berserker, Class.Cleric), "SClass112"},
            {(Race.DarkElf, Class.Berserker, Class.Arcanus), "SClass113"},
            {(Race.DarkElf, Class.Berserker, Class.Monk), "SClass114"},
            {(Race.DarkElf, Class.Defender, Class.Berserker), "SClass115"},
            {(Race.DarkElf, Class.Defender, Class.Defender), "SClass116"},
            {(Race.DarkElf, Class.Defender, Class.Assassin), "SClass117"},
            {(Race.DarkElf, Class.Defender, Class.Cleric), "SClass118"},
            {(Race.DarkElf, Class.Defender, Class.Arcanus), "SClass119"},
            {(Race.DarkElf, Class.Defender, Class.Monk), "SClass120"},
            {(Race.DarkElf, Class.Assassin, Class.Berserker), "SClass121"},
            {(Race.DarkElf, Class.Assassin, Class.Defender), "SClass122"},
            {(Race.DarkElf, Class.Assassin, Class.Assassin), "SClass123"},
            {(Race.DarkElf, Class.Assassin, Class.Cleric), "SClass124"},
            {(Race.DarkElf, Class.Assassin, Class.Arcanus), "SClass125"},
            {(Race.DarkElf, Class.Assassin, Class.Monk), "SClass126"},
            {(Race.DarkElf, Class.Cleric, Class.Berserker), "SClass127"},
            {(Race.DarkElf, Class.Cleric, Class.Defender), "SClass128"},
            {(Race.DarkElf, Class.Cleric, Class.Assassin), "SClass129"},
            {(Race.DarkElf, Class.Cleric, Class.Cleric), "SClass130"},
            {(Race.DarkElf, Class.Cleric, Class.Arcanus), "SClass131"},
            {(Race.DarkElf, Class.Cleric, Class.Monk), "SClass132"},
            {(Race.DarkElf, Class.Arcanus, Class.Berserker), "SClass133"},
            {(Race.DarkElf, Class.Arcanus, Class.Defender), "SClass134"},
            {(Race.DarkElf, Class.Arcanus, Class.Assassin), "SClass135"},
            {(Race.DarkElf, Class.Arcanus, Class.Cleric), "SClass136"},
            {(Race.DarkElf, Class.Arcanus, Class.Arcanus), "SClass137"},
            {(Race.DarkElf, Class.Arcanus, Class.Monk), "SClass138"},
            {(Race.DarkElf, Class.Monk, Class.Berserker), "SClass139"},
            {(Race.DarkElf, Class.Monk, Class.Defender), "SClass140"},
            {(Race.DarkElf, Class.Monk, Class.Assassin), "SClass141"},
            {(Race.DarkElf, Class.Monk, Class.Cleric), "SClass142"},
            {(Race.DarkElf, Class.Monk, Class.Arcanus), "SClass143"},
            {(Race.DarkElf, Class.Monk, Class.Monk), "SClass144"},
            {(Race.WoodElf, Class.Berserker, Class.Berserker), "SClass145"},
            {(Race.WoodElf, Class.Berserker, Class.Defender), "SClass146"},
            {(Race.WoodElf, Class.Berserker, Class.Assassin), "SClass147"},
            {(Race.WoodElf, Class.Berserker, Class.Cleric), "SClass148"},
            {(Race.WoodElf, Class.Berserker, Class.Arcanus), "SClass149"},
            {(Race.WoodElf, Class.Berserker, Class.Monk), "SClass150"},
            {(Race.WoodElf, Class.Defender, Class.Berserker), "SClass151"},
            {(Race.WoodElf, Class.Defender, Class.Defender), "SClass152"},
            {(Race.WoodElf, Class.Defender, Class.Assassin), "SClass153"},
            {(Race.WoodElf, Class.Defender, Class.Cleric), "SClass154"},
            {(Race.WoodElf, Class.Defender, Class.Arcanus), "SClass155"},
            {(Race.WoodElf, Class.Defender, Class.Monk), "SClass156"},
            {(Race.WoodElf, Class.Assassin, Class.Berserker), "SClass157"},
            {(Race.WoodElf, Class.Assassin, Class.Defender), "SClass158"},
            {(Race.WoodElf, Class.Assassin, Class.Assassin), "SClass159"},
            {(Race.WoodElf, Class.Assassin, Class.Cleric), "SClass160"},
            {(Race.WoodElf, Class.Assassin, Class.Arcanus), "SClass161"},
            {(Race.WoodElf, Class.Assassin, Class.Monk), "SClass162"},
            {(Race.WoodElf, Class.Cleric, Class.Berserker), "SClass163"},
            {(Race.WoodElf, Class.Cleric, Class.Defender), "SClass164"},
            {(Race.WoodElf, Class.Cleric, Class.Assassin), "SClass165"},
            {(Race.WoodElf, Class.Cleric, Class.Cleric), "SClass166"},
            {(Race.WoodElf, Class.Cleric, Class.Arcanus), "SClass167"},
            {(Race.WoodElf, Class.Cleric, Class.Monk), "SClass168"},
            {(Race.WoodElf, Class.Arcanus, Class.Berserker), "SClass169"},
            {(Race.WoodElf, Class.Arcanus, Class.Defender), "SClass170"},
            {(Race.WoodElf, Class.Arcanus, Class.Assassin), "SClass171"},
            {(Race.WoodElf, Class.Arcanus, Class.Cleric), "SClass172"},
            {(Race.WoodElf, Class.Arcanus, Class.Arcanus), "SClass173"},
            {(Race.WoodElf, Class.Arcanus, Class.Monk), "SClass174"},
            {(Race.WoodElf, Class.Monk, Class.Berserker), "SClass175"},
            {(Race.WoodElf, Class.Monk, Class.Defender), "SClass176"},
            {(Race.WoodElf, Class.Monk, Class.Assassin), "SClass177"},
            {(Race.WoodElf, Class.Monk, Class.Cleric), "SClass178"},
            {(Race.WoodElf, Class.Monk, Class.Arcanus), "SClass179"},
            {(Race.WoodElf, Class.Monk, Class.Monk), "SClass180"},
            {(Race.Orc, Class.Berserker, Class.Berserker), "SClass181"},
            {(Race.Orc, Class.Berserker, Class.Defender), "SClass182"},
            {(Race.Orc, Class.Berserker, Class.Assassin), "SClass183"},
            {(Race.Orc, Class.Berserker, Class.Cleric), "SClass184"},
            {(Race.Orc, Class.Berserker, Class.Arcanus), "SClass185"},
            {(Race.Orc, Class.Berserker, Class.Monk), "SClass186"},
            {(Race.Orc, Class.Defender, Class.Berserker), "SClass187"},
            {(Race.Orc, Class.Defender, Class.Defender), "SClass188"},
            {(Race.Orc, Class.Defender, Class.Assassin), "SClass189"},
            {(Race.Orc, Class.Defender, Class.Cleric), "SClass190"},
            {(Race.Orc, Class.Defender, Class.Arcanus), "SClass191"},
            {(Race.Orc, Class.Defender, Class.Monk), "SClass192"},
            {(Race.Orc, Class.Assassin, Class.Berserker), "SClass193"},
            {(Race.Orc, Class.Assassin, Class.Defender), "SClass194"},
            {(Race.Orc, Class.Assassin, Class.Assassin), "SClass195"},
            {(Race.Orc, Class.Assassin, Class.Cleric), "SClass196"},
            {(Race.Orc, Class.Assassin, Class.Arcanus), "SClass197"},
            {(Race.Orc, Class.Assassin, Class.Monk), "SClass198"},
            {(Race.Orc, Class.Cleric, Class.Berserker), "SClass199"},
            {(Race.Orc, Class.Cleric, Class.Defender), "SClass200"},
            {(Race.Orc, Class.Cleric, Class.Assassin), "SClass201"},
            {(Race.Orc, Class.Cleric, Class.Cleric), "SClass202"},
            {(Race.Orc, Class.Cleric, Class.Arcanus), "SClass203"},
            {(Race.Orc, Class.Cleric, Class.Monk), "SClass204"},
            {(Race.Orc, Class.Arcanus, Class.Berserker), "SClass205"},
            {(Race.Orc, Class.Arcanus, Class.Defender), "SClass206"},
            {(Race.Orc, Class.Arcanus, Class.Assassin), "SClass207"},
            {(Race.Orc, Class.Arcanus, Class.Cleric), "SClass208"},
            {(Race.Orc, Class.Arcanus, Class.Arcanus), "SClass209"},
            {(Race.Orc, Class.Arcanus, Class.Monk), "SClass210"},
            {(Race.Orc, Class.Monk, Class.Berserker), "SClass211"},
            {(Race.Orc, Class.Monk, Class.Defender), "SClass212"},
            {(Race.Orc, Class.Monk, Class.Assassin), "SClass213"},
            {(Race.Orc, Class.Monk, Class.Cleric), "SClass214"},
            {(Race.Orc, Class.Monk, Class.Arcanus), "SClass215"},
            {(Race.Orc, Class.Monk, Class.Monk), "SClass216"},
            {(Race.Dwarf, Class.Berserker, Class.Berserker), "SClass217"},
            {(Race.Dwarf, Class.Berserker, Class.Defender), "SClass218"},
            {(Race.Dwarf, Class.Berserker, Class.Assassin), "SClass219"},
            {(Race.Dwarf, Class.Berserker, Class.Cleric), "SClass220"},
            {(Race.Dwarf, Class.Berserker, Class.Arcanus), "SClass221"},
            {(Race.Dwarf, Class.Berserker, Class.Monk), "SClass222"},
            {(Race.Dwarf, Class.Defender, Class.Berserker), "SClass223"},
            {(Race.Dwarf, Class.Defender, Class.Defender), "SClass224"},
            {(Race.Dwarf, Class.Defender, Class.Assassin), "SClass225"},
            {(Race.Dwarf, Class.Defender, Class.Cleric), "SClass226"},
            {(Race.Dwarf, Class.Defender, Class.Arcanus), "SClass227"},
            {(Race.Dwarf, Class.Defender, Class.Monk), "SClass228"},
            {(Race.Dwarf, Class.Assassin, Class.Berserker), "SClass229"},
            {(Race.Dwarf, Class.Assassin, Class.Defender), "SClass230"},
            {(Race.Dwarf, Class.Assassin, Class.Assassin), "SClass231"},
            {(Race.Dwarf, Class.Assassin, Class.Cleric), "SClass232"},
            {(Race.Dwarf, Class.Assassin, Class.Arcanus), "SClass233"},
            {(Race.Dwarf, Class.Assassin, Class.Monk), "SClass234"},
            {(Race.Dwarf, Class.Cleric, Class.Berserker), "SClass235"},
            {(Race.Dwarf, Class.Cleric, Class.Defender), "SClass236"},
            {(Race.Dwarf, Class.Cleric, Class.Assassin), "SClass237"},
            {(Race.Dwarf, Class.Cleric, Class.Cleric), "SClass238"},
            {(Race.Dwarf, Class.Cleric, Class.Arcanus), "SClass239"},
            {(Race.Dwarf, Class.Cleric, Class.Monk), "SClass240"},
            {(Race.Dwarf, Class.Arcanus, Class.Berserker), "SClass241"},
            {(Race.Dwarf, Class.Arcanus, Class.Defender), "SClass242"},
            {(Race.Dwarf, Class.Arcanus, Class.Assassin), "SClass243"},
            {(Race.Dwarf, Class.Arcanus, Class.Cleric), "SClass244"},
            {(Race.Dwarf, Class.Arcanus, Class.Arcanus), "SClass245"},
            {(Race.Dwarf, Class.Arcanus, Class.Monk), "SClass246"},
            {(Race.Dwarf, Class.Monk, Class.Berserker), "SClass247"},
            {(Race.Dwarf, Class.Monk, Class.Defender), "SClass248"},
            {(Race.Dwarf, Class.Monk, Class.Assassin), "SClass249"},
            {(Race.Dwarf, Class.Monk, Class.Cleric), "SClass250"},
            {(Race.Dwarf, Class.Monk, Class.Arcanus), "SClass251"},
            {(Race.Dwarf, Class.Monk, Class.Monk), "SClass252"},
            {(Race.Halfling, Class.Berserker, Class.Berserker), "SClass253"},
            {(Race.Halfling, Class.Berserker, Class.Defender), "SClass254"},
            {(Race.Halfling, Class.Berserker, Class.Assassin), "SClass255"},
            {(Race.Halfling, Class.Berserker, Class.Cleric), "SClass256"},
            {(Race.Halfling, Class.Berserker, Class.Arcanus), "SClass257"},
            {(Race.Halfling, Class.Berserker, Class.Monk), "SClass258"},
            {(Race.Halfling, Class.Defender, Class.Berserker), "SClass259"},
            {(Race.Halfling, Class.Defender, Class.Defender), "SClass260"},
            {(Race.Halfling, Class.Defender, Class.Assassin), "SClass261"},
            {(Race.Halfling, Class.Defender, Class.Cleric), "SClass262"},
            {(Race.Halfling, Class.Defender, Class.Arcanus), "SClass263"},
            {(Race.Halfling, Class.Defender, Class.Monk), "SClass264"},
            {(Race.Halfling, Class.Assassin, Class.Berserker), "SClass265"},
            {(Race.Halfling, Class.Assassin, Class.Defender), "SClass266"},
            {(Race.Halfling, Class.Assassin, Class.Assassin), "SClass267"},
            {(Race.Halfling, Class.Assassin, Class.Cleric), "SClass268"},
            {(Race.Halfling, Class.Assassin, Class.Arcanus), "SClass269"},
            {(Race.Halfling, Class.Assassin, Class.Monk), "SClass270"},
            {(Race.Halfling, Class.Cleric, Class.Berserker), "SClass271"},
            {(Race.Halfling, Class.Cleric, Class.Defender), "SClass272"},
            {(Race.Halfling, Class.Cleric, Class.Assassin), "SClass273"},
            {(Race.Halfling, Class.Cleric, Class.Cleric), "SClass274"},
            {(Race.Halfling, Class.Cleric, Class.Arcanus), "SClass275"},
            {(Race.Halfling, Class.Cleric, Class.Monk), "SClass276"},
            {(Race.Halfling, Class.Arcanus, Class.Berserker), "SClass277"},
            {(Race.Halfling, Class.Arcanus, Class.Defender), "SClass278"},
            {(Race.Halfling, Class.Arcanus, Class.Assassin), "SClass279"},
            {(Race.Halfling, Class.Arcanus, Class.Cleric), "SClass280"},
            {(Race.Halfling, Class.Arcanus, Class.Arcanus), "SClass281"},
            {(Race.Halfling, Class.Arcanus, Class.Monk), "SClass282"},
            {(Race.Halfling, Class.Monk, Class.Berserker), "SClass283"},
            {(Race.Halfling, Class.Monk, Class.Defender), "SClass284"},
            {(Race.Halfling, Class.Monk, Class.Assassin), "SClass285"},
            {(Race.Halfling, Class.Monk, Class.Cleric), "SClass286"},
            {(Race.Halfling, Class.Monk, Class.Arcanus), "SClass287"},
            {(Race.Halfling, Class.Monk, Class.Monk), "SClass288"},
            {(Race.Dragonkin, Class.Berserker, Class.Berserker), "SClass289"},
            {(Race.Dragonkin, Class.Berserker, Class.Defender), "SClass290"},
            {(Race.Dragonkin, Class.Berserker, Class.Assassin), "SClass291"},
            {(Race.Dragonkin, Class.Berserker, Class.Cleric), "SClass292"},
            {(Race.Dragonkin, Class.Berserker, Class.Arcanus), "SClass293"},
            {(Race.Dragonkin, Class.Berserker, Class.Monk), "SClass294"},
            {(Race.Dragonkin, Class.Defender, Class.Berserker), "SClass295"},
            {(Race.Dragonkin, Class.Defender, Class.Defender), "SClass296"},
            {(Race.Dragonkin, Class.Defender, Class.Assassin), "SClass297"},
            {(Race.Dragonkin, Class.Defender, Class.Cleric), "SClass298"},
            {(Race.Dragonkin, Class.Defender, Class.Arcanus), "SClass299"},
            {(Race.Dragonkin, Class.Defender, Class.Monk), "SClass300"},
            {(Race.Dragonkin, Class.Assassin, Class.Berserker), "SClass301"},
            {(Race.Dragonkin, Class.Assassin, Class.Defender), "SClass302"},
            {(Race.Dragonkin, Class.Assassin, Class.Assassin), "SClass303"},
            {(Race.Dragonkin, Class.Assassin, Class.Cleric), "SClass304"},
            {(Race.Dragonkin, Class.Assassin, Class.Arcanus), "SClass305"},
            {(Race.Dragonkin, Class.Assassin, Class.Monk), "SClass306"},
            {(Race.Dragonkin, Class.Cleric, Class.Berserker), "SClass307"},
            {(Race.Dragonkin, Class.Cleric, Class.Defender), "SClass308"},
            {(Race.Dragonkin, Class.Cleric, Class.Assassin), "SClass309"},
            {(Race.Dragonkin, Class.Cleric, Class.Cleric), "SClass310"},
            {(Race.Dragonkin, Class.Cleric, Class.Arcanus), "SClass311"},
            {(Race.Dragonkin, Class.Cleric, Class.Monk), "SClass312"},
            {(Race.Dragonkin, Class.Arcanus, Class.Berserker), "SClass313"},
            {(Race.Dragonkin, Class.Arcanus, Class.Defender), "SClass314"},
            {(Race.Dragonkin, Class.Arcanus, Class.Assassin), "SClass315"},
            {(Race.Dragonkin, Class.Arcanus, Class.Cleric), "SClass316"},
            {(Race.Dragonkin, Class.Arcanus, Class.Arcanus), "SClass317"},
            {(Race.Dragonkin, Class.Arcanus, Class.Monk), "SClass318"},
            {(Race.Dragonkin, Class.Monk, Class.Berserker), "SClass319"},
            {(Race.Dragonkin, Class.Monk, Class.Defender), "SClass320"},
            {(Race.Dragonkin, Class.Monk, Class.Assassin), "SClass321"},
            {(Race.Dragonkin, Class.Monk, Class.Cleric), "SClass322"},
            {(Race.Dragonkin, Class.Monk, Class.Arcanus), "SClass323"},
            {(Race.Dragonkin, Class.Monk, Class.Monk), "SClass324"},
            {(Race.HalfBeast, Class.Berserker, Class.Berserker), "SClass325"},
            {(Race.HalfBeast, Class.Berserker, Class.Defender), "SClass326"},
            {(Race.HalfBeast, Class.Berserker, Class.Assassin), "SClass327"},
            {(Race.HalfBeast, Class.Berserker, Class.Cleric), "SClass328"},
            {(Race.HalfBeast, Class.Berserker, Class.Arcanus), "SClass329"},
            {(Race.HalfBeast, Class.Berserker, Class.Monk), "SClass330"},
            {(Race.HalfBeast, Class.Defender, Class.Berserker), "SClass331"},
            {(Race.HalfBeast, Class.Defender, Class.Defender), "SClass332"},
            {(Race.HalfBeast, Class.Defender, Class.Assassin), "SClass333"},
            {(Race.HalfBeast, Class.Defender, Class.Cleric), "SClass334"},
            {(Race.HalfBeast, Class.Defender, Class.Arcanus), "SClass335"},
            {(Race.HalfBeast, Class.Defender, Class.Monk), "SClass336"},
            {(Race.HalfBeast, Class.Assassin, Class.Berserker), "SClass337"},
            {(Race.HalfBeast, Class.Assassin, Class.Defender), "SClass338"},
            {(Race.HalfBeast, Class.Assassin, Class.Assassin), "SClass339"},
            {(Race.HalfBeast, Class.Assassin, Class.Cleric), "SClass340"},
            {(Race.HalfBeast, Class.Assassin, Class.Arcanus), "SClass341"},
            {(Race.HalfBeast, Class.Assassin, Class.Monk), "SClass342"},
            {(Race.HalfBeast, Class.Cleric, Class.Berserker), "SClass343"},
            {(Race.HalfBeast, Class.Cleric, Class.Defender), "SClass344"},
            {(Race.HalfBeast, Class.Cleric, Class.Assassin), "SClass345"},
            {(Race.HalfBeast, Class.Cleric, Class.Cleric), "SClass346"},
            {(Race.HalfBeast, Class.Cleric, Class.Arcanus), "SClass347"},
            {(Race.HalfBeast, Class.Cleric, Class.Monk), "SClass348"},
            {(Race.HalfBeast, Class.Arcanus, Class.Berserker), "SClass349"},
            {(Race.HalfBeast, Class.Arcanus, Class.Defender), "SClass350"},
            {(Race.HalfBeast, Class.Arcanus, Class.Assassin), "SClass351"},
            {(Race.HalfBeast, Class.Arcanus, Class.Cleric), "SClass352"},
            {(Race.HalfBeast, Class.Arcanus, Class.Arcanus), "SClass353"},
            {(Race.HalfBeast, Class.Arcanus, Class.Monk), "SClass354"},
            {(Race.HalfBeast, Class.Monk, Class.Berserker), "SClass355"},
            {(Race.HalfBeast, Class.Monk, Class.Defender), "SClass356"},
            {(Race.HalfBeast, Class.Monk, Class.Assassin), "SClass357"},
            {(Race.HalfBeast, Class.Monk, Class.Cleric), "SClass358"},
            {(Race.HalfBeast, Class.Monk, Class.Arcanus), "SClass359"},
            {(Race.HalfBeast, Class.Monk, Class.Monk), "SClass360"},
            {(Race.Merfolk, Class.Berserker, Class.Berserker), "SClass361"},
            {(Race.Merfolk, Class.Berserker, Class.Defender), "SClass362"},
            {(Race.Merfolk, Class.Berserker, Class.Assassin), "SClass363"},
            {(Race.Merfolk, Class.Berserker, Class.Cleric), "SClass364"},
            {(Race.Merfolk, Class.Berserker, Class.Arcanus), "SClass365"},
            {(Race.Merfolk, Class.Berserker, Class.Monk), "SClass366"},
            {(Race.Merfolk, Class.Defender, Class.Berserker), "SClass367"},
            {(Race.Merfolk, Class.Defender, Class.Defender), "SClass368"},
            {(Race.Merfolk, Class.Defender, Class.Assassin), "SClass369"},
            {(Race.Merfolk, Class.Defender, Class.Cleric), "SClass370"},
            {(Race.Merfolk, Class.Defender, Class.Arcanus), "SClass371"},
            {(Race.Merfolk, Class.Defender, Class.Monk), "SClass372"},
            {(Race.Merfolk, Class.Assassin, Class.Berserker), "SClass373"},
            {(Race.Merfolk, Class.Assassin, Class.Defender), "SClass374"},
            {(Race.Merfolk, Class.Assassin, Class.Assassin), "SClass375"},
            {(Race.Merfolk, Class.Assassin, Class.Cleric), "SClass376"},
            {(Race.Merfolk, Class.Assassin, Class.Arcanus), "SClass377"},
            {(Race.Merfolk, Class.Assassin, Class.Monk), "SClass378"},
            {(Race.Merfolk, Class.Cleric, Class.Berserker), "SClass379"},
            {(Race.Merfolk, Class.Cleric, Class.Defender), "SClass380"},
            {(Race.Merfolk, Class.Cleric, Class.Assassin), "SClass381"},
            {(Race.Merfolk, Class.Cleric, Class.Cleric), "SClass382"},
            {(Race.Merfolk, Class.Cleric, Class.Arcanus), "SClass383"},
            {(Race.Merfolk, Class.Cleric, Class.Monk), "SClass384"},
            {(Race.Merfolk, Class.Arcanus, Class.Berserker), "SClass385"},
            {(Race.Merfolk, Class.Arcanus, Class.Defender), "SClass386"},
            {(Race.Merfolk, Class.Arcanus, Class.Assassin), "SClass387"},
            {(Race.Merfolk, Class.Arcanus, Class.Cleric), "SClass388"},
            {(Race.Merfolk, Class.Arcanus, Class.Arcanus), "SClass389"},
            {(Race.Merfolk, Class.Arcanus, Class.Monk), "SClass390"},
            {(Race.Merfolk, Class.Monk, Class.Berserker), "SClass391"},
            {(Race.Merfolk, Class.Monk, Class.Defender), "SClass392"},
            {(Race.Merfolk, Class.Monk, Class.Assassin), "SClass393"},
            {(Race.Merfolk, Class.Monk, Class.Cleric), "SClass394"},
            {(Race.Merfolk, Class.Monk, Class.Arcanus), "SClass395"},
            {(Race.Merfolk, Class.Monk, Class.Monk), "SClass396"}
        };
    }

    #endregion

    #region Server Loop

    private Task SaveUserAsync(Aisling aisling) => StorageManager.AislingBucket.Save(aisling);

    public void Start()
    {
        try
        {
            ServerSetup.Instance.Running = true;
            UpdateComponentsRoutine();
            UpdateObjectsRoutine();
            UpdateMapsRoutine();
            NightlyServerReset();
        }
        catch (Exception ex)
        {
            ServerSetup.Logger(ex.Message, LogLevel.Error);
            ServerSetup.Logger(ex.StackTrace, LogLevel.Error);
            Crashes.TrackError(ex);
            ServerSetup.Instance.Running = false;
        }
    }

    private void UpdateComponentsRoutine()
    {
        _gameSpeed = DateTime.UtcNow;

        while (ServerSetup.Instance.Running)
        {
            var gTimeConvert = DateTime.UtcNow;
            var gameTime = gTimeConvert - _gameSpeed;

            var components = _serverComponents.Select(i => i.Value);

            foreach (var component in components)
            {
                component?.Update(gameTime);
            }

            _gameSpeed += gameTime;

            Task.Delay(GameSpeed).ConfigureAwait(false);
        }
    }

    private void UpdateObjectsRoutine()
    {
        _spriteSpeed = DateTime.UtcNow;

        while (ServerSetup.Instance.Running)
        {
            var gTimeConvert = DateTime.UtcNow;
            var gameTime = gTimeConvert - _spriteSpeed;

            UpdateClients(gameTime);
            UpdateMonsters(gameTime);
            UpdateMundanes(gameTime);

            _spriteSpeed += gameTime;

            Task.Delay(SpriteSpeed).ConfigureAwait(false);
        }
    }

    private void UpdateMapsRoutine()
    {
        _gameSpeed = DateTime.UtcNow;

        while (ServerSetup.Instance.Running)
        {
            var gTimeConvert = DateTime.UtcNow;
            var gameTime = gTimeConvert - _gameSpeed;

            UpdateMaps(gameTime);

            _gameSpeed += gameTime;

            Task.Delay(GameSpeed).ConfigureAwait(false);
        }
    }

    private void NightlyServerReset()
    {
        var currentTime = DateTime.UtcNow;
        var midnight = DateTime.Today;

        while (ServerSetup.Instance.Running)
        {
            if (!currentTime.Equals(midnight)) continue;
            Commander.Restart(null, null);
            break;
        }
    }

    private void UpdateClients(TimeSpan elapsedTime)
    {
        var players = Aislings;

        foreach (var player in players.Where(player => player != null))
        {
            try
            {
                switch (player.Client.IsWarping)
                {
                    case false when !player.Client.MapOpen:
                        player.Client.Update(elapsedTime);
                        break;
                    case true:
                        break;
                }

                if (player.Invisible) continue;
                var buffs = player.Buffs.Values;

                foreach (var buff in buffs)
                {
                    if (buff.Name is "Hide" or "Shadowfade")
                        buff.OnEnded(player, buff);
                }
            }
            catch (Exception ex)
            {
                ServerSetup.Logger(ex.Message, LogLevel.Error);
                ServerSetup.Logger(ex.StackTrace, LogLevel.Error);
                Crashes.TrackError(ex);
                player.Client.Disconnect();
            }
        }
    }

    private static void UpdateMonsters(TimeSpan elapsedTime)
    {
        // Cache traps to reduce Select operation on each iteration
        var traps = Trap.Traps.Values;
        var updateList = ServerSetup.Instance.GlobalMonsterCache;

        foreach (var (_, monster) in updateList)
        {
            if (monster?.Scripts == null) continue;
            if (monster.CurrentHp <= 0)
            {
                UpdateKillCounters(monster);
                monster.Skulled = true;

                if (monster.Target?.Client != null)
                {
                    monster.Scripts.Values.First().OnDeath(monster.Target.Client);
                }
                else
                {
                    monster.Scripts.Values.First().OnDeath();
                }
            }

            monster.Scripts.Values.First().Update(elapsedTime);

            foreach (var trap in traps)
            {
                if (trap?.Owner == null || trap.Owner.Serial == monster.Serial ||
                    monster.X != trap.Location.X || monster.Y != trap.Location.Y) continue;

                var triggered = Trap.Activate(trap, monster);
                if (triggered) break;
            }

            monster.UpdateBuffs(elapsedTime);
            monster.UpdateDebuffs(elapsedTime);
            monster.LastUpdated = DateTime.UtcNow;
        }
    }

    private static void UpdateKillCounters(Monster monster)
    {
        if (monster.Target is not Aisling aisling) return;
        var readyTime = DateTime.UtcNow;

        if (!aisling.MonsterKillCounters.ContainsKey(monster.Template.BaseName))
        {
            aisling.MonsterKillCounters[monster.Template.BaseName] =
                new KillRecord
                {
                    TotalKills = 1,
                    TimeKilled = readyTime
                };
        }
        else
        {
            aisling.MonsterKillCounters[monster.Template.BaseName].TotalKills++;
            aisling.MonsterKillCounters[monster.Template.BaseName].TimeKilled = readyTime;
        }

        QuestHandling(aisling, monster);
    }

    private static void QuestHandling(Aisling aisling, Monster monster)
    {
        if (!aisling.Client.Aisling.QuestManager.KeelaKill.IsNullOrEmpty())
        {
            if (aisling.Client.Aisling.QuestManager.KeelaKill == monster.Template.BaseName)
            {
                var killed = aisling.MonsterKillCounters[monster.Template.BaseName].TotalKills;

                if (killed >= aisling.Client.Aisling.QuestManager.KeelaCount)
                {
                    const string script = "Nadia";
                    var scriptObj = ServerSetup.Instance.GlobalMundaneScriptCache.FirstOrDefault(i => i.Key == script);
                    scriptObj.Value?.OnResponse(aisling.Client, 0x01, null);

                    return;
                }

                aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=aAssassin Quest: {{=q{killed}{{=a killed.");
            }
        }

        if (!aisling.Client.Aisling.QuestManager.NealKill.IsNullOrEmpty())
        {
            if (aisling.Client.Aisling.QuestManager.NealKill == monster.Template.BaseName)
            {
                var killed = aisling.MonsterKillCounters[monster.Template.BaseName].TotalKills;

                if (killed >= aisling.Client.Aisling.QuestManager.NealCount)
                {
                    const string script = "Nadia";
                    var scriptObj = ServerSetup.Instance.GlobalMundaneScriptCache.FirstOrDefault(i => i.Key == script);
                    scriptObj.Value?.OnResponse(aisling.Client, 0x03, null);

                    return;
                }

                aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=aNeal Quest: {{=q{killed}{{=a killed.");
            }
        }
    }

    private static void UpdateMundanes(TimeSpan elapsedTime)
    {
        foreach (var (_, mundane) in ServerSetup.Instance.GlobalMundaneCache)
        {
            if (mundane == null) continue;
            mundane.Update(elapsedTime);
            mundane.LastUpdated = DateTime.UtcNow;
        }
    }

    private static void UpdateMaps(TimeSpan elapsedTime)
    {
        foreach (var (_, map) in ServerSetup.Instance.GlobalMapCache)
        {
            map?.Update(elapsedTime);
        }
    }

    #endregion

    #region Server Utilities

    public static void CancelIfCasting(WorldClient client)
    {
        if (!client.Aisling.LoggedIn) return;
        if (client.Aisling.IsCastingSpell)
            client.SendCancelCasting();

        client.CastStack.Clear();
        client.Aisling.IsCastingSpell = false;
    }

    #endregion

    #region OnHandlers

    /// <summary>
    /// 0x05 - Request Map Data
    /// </summary>
    public ValueTask OnMapDataRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling?.Map == null) return default;
        if (client.MapUpdating && client.Aisling.CurrentMapId != ServerSetup.Instance.Config.TransitionZone) return default;

        static ValueTask InnerOnMapDataRequest(IWorldClient localClient)
        {
            try
            {
                localClient.MapUpdating = true;
                localClient.SendMapData();
            }
            finally
            {
                localClient.MapUpdating = false;
            }

            return default;
        }

        return ExecuteHandler(client, InnerOnMapDataRequest);
    }

    /// <summary>
    /// 0x06 - Client Movement
    /// </summary>
    public ValueTask OnClientWalk(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling?.Map is not { Ready: true }) return default;
        if (client.Aisling.CantMove)
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, "{=bYou cannot feel your legs...");
            client.SendLocation();
            client.UpdateDisplay();
            return default;
        }

        if (client.Aisling.Skulled)
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, ServerSetup.Instance.Config.ReapMessageDuringAction);
            client.Interrupt();

            return default;
        }

        if (client.IsRefreshing && ServerSetup.Instance.Config.CancelWalkingIfRefreshing) return default;
        if (client.Aisling.IsCastingSpell && ServerSetup.Instance.Config.CancelCastingWhenWalking)
        {
            CancelIfCasting(client.Aisling.Client);
            return default;
        }


        var args = PacketSerializer.Deserialize<ClientWalkArgs>(in clientPacket);

        static ValueTask InnerOnClientWalk(IWorldClient localClient, ClientWalkArgs localArgs)
        {
            localClient.Aisling.Direction = (byte)localArgs.Direction;
            var success = localClient.Aisling.Walk();

            if (success)
            {
                if (localClient.Aisling.AreaId == ServerSetup.Instance.Config.TransitionZone)
                {
                    var portal = new PortalSession();
                    portal.TransitionToMap(localClient.Aisling.Client);
                    return default;
                }

                localClient.CheckWarpTransitions(localClient.Aisling.Client);

                if (localClient.Aisling.Map?.Script.Item2 == null) return default;

                localClient.Aisling.Map.Script.Item2.OnPlayerWalk(localClient.Aisling.Client, localClient.Aisling.LastPosition, localClient.Aisling.Position);
                if (!localClient.Aisling.Map.Flags.MapFlagIsSet(MapFlags.PlayerKill)) return default;

                foreach (var trap in Trap.Traps.Select(i => i.Value))
                {
                    if (trap?.Owner == null || trap.Owner.Serial == localClient.Aisling.Serial ||
                        localClient.Aisling.X != trap.Location.X ||
                        localClient.Aisling.Y != trap.Location.Y) continue;

                    var triggered = Trap.Activate(trap, localClient.Aisling);
                    if (triggered) break;
                }
            }
            else
            {
                localClient.ClientRefreshed();
                localClient.CheckWarpTransitions(localClient.Aisling.Client);
            }

            localClient.LastMovement = DateTime.UtcNow;
            return default;
        }

        return ExecuteHandler(client, args, InnerOnClientWalk);
    }

    /// <summary>
    /// 0x07 - Object Pickup
    /// </summary>
    public ValueTask OnPickup(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling is null || client.Aisling.LoggedIn == false) return default;
        if (client.Aisling.IsDead())
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, "You cannot do that.");
            return default;
        }

        if (client.Aisling.HasDebuff("Skulled") || client.Aisling.IsSleeping || client.Aisling.IsFrozen || client.Aisling.IsStopped)
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, "You cannot do that.");
            return default;
        }

        var args = PacketSerializer.Deserialize<PickupArgs>(in clientPacket);

        ValueTask InnerOnPickup(IWorldClient localClient, PickupArgs localArgs)
        {
            var (destinationSlot, sourcePoint) = localArgs;
            var map = localClient.Aisling.Map;
            var itemObjs = ObjectHandlers.GetObjects(map, i => (int)i.Pos.X == sourcePoint.X && (int)i.Pos.Y == sourcePoint.Y, ObjectManager.Get.Items).ToList();
            var moneyObjs = ObjectHandlers.GetObjects(map, i => (int)i.Pos.X == sourcePoint.X && (int)i.Pos.Y == sourcePoint.Y, ObjectManager.Get.Money);

            if (!itemObjs.IsEmpty())
            {
                var obj = itemObjs.First();
                if (obj?.CurrentMapId != localClient.Aisling.CurrentMapId) return default;
                if (!(localClient.Aisling.Position.DistanceFrom(obj.Position) <= ServerSetup.Instance.Config.ClickLootDistance)) return default;

                if (obj is not Item item) return default;
                if ((item.Template.Flags & ItemFlags.Trap) == ItemFlags.Trap) return default;
                if (item.Template.Flags.FlagIsSet(ItemFlags.Unique) && item.Template.Name == "Necra Scribblings")
                    if (localClient.Aisling.Stage >= ClassStage.Master) return default;


                foreach (var invItem in localClient.Aisling.Inventory.Items.Values)
                {
                    if (invItem == null) continue;
                    if (!invItem.Template.Flags.FlagIsSet(ItemFlags.Unique)) continue;
                    if (invItem.Template.Name != item.Template.Name) continue;
                    localClient.SendServerMessage(ServerMessageType.ActiveMessage, "You may only hold one in your possession.");
                    return default;
                }

                foreach (var invItem in localClient.Aisling.BankManager.Items.Values)
                {
                    if (invItem == null) continue;
                    if (!invItem.Template.Flags.FlagIsSet(ItemFlags.Unique)) continue;
                    if (invItem.Template.Name != item.Template.Name) continue;
                    localClient.SendServerMessage(ServerMessageType.ActiveMessage, "You may only hold one in your possession.");
                    return default;
                }

                if (item.Cursed)
                {
                    Sprite first = null;

                    if (item.AuthenticatedAislings != null)
                    {
                        foreach (var i in item.AuthenticatedAislings)
                        {
                            if (i.Serial != localClient.Aisling.Serial) continue;

                            first = i;
                            break;
                        }

                        if (item.AuthenticatedAislings != null && first == null)
                        {
                            localClient.SendServerMessage(ServerMessageType.ActiveMessage, $"{ServerSetup.Instance.Config.CursedItemMessage}");
                            return default;
                        }
                    }

                    item.Pos = localClient.Aisling.Pos;
                    var objToList = new List<Sprite> { obj };
                    localClient.SendVisibleEntities(objToList);
                }

                if (item.GiveTo(localClient.Aisling))
                {
                    item.Remove();
                    if (item.Scripts is null) return default;
                    foreach (var itemScript in item.Scripts.Values)
                        itemScript?.OnPickedUp(localClient.Aisling, new Position(sourcePoint.X, sourcePoint.Y), map);
                    return default;
                }

                item.Pos = localClient.Aisling.Pos;
                var objToList2 = new List<Sprite> { obj };
                localClient.SendVisibleEntities(objToList2);
            }

            foreach (var obj in moneyObjs)
            {
                if (obj?.CurrentMapId != localClient.Aisling.CurrentMapId) break;
                if (!(localClient.Aisling.Position.DistanceFrom(obj.Position) <= ServerSetup.Instance.Config.ClickLootDistance)) break;

                if (obj is not Money money) continue;

                money.GiveTo(money.Amount, localClient.Aisling);
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnPickup);
    }

    /// <summary>
    /// 0x08 - Drop Item
    /// </summary>
    public ValueTask OnItemDropped(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling is null || client.Aisling.LoggedIn == false) return default;
        if (client.Aisling.Map is not { Ready: true }) return default;
        if (client.Aisling.IsDead())
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, "You cannot do that.");
            return default;
        }

        if (client.Aisling.HasDebuff("Skulled") || client.Aisling.IsSleeping || client.Aisling.IsFrozen || client.Aisling.IsStopped)
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, "You cannot do that.");
            return default;
        }

        var args = PacketSerializer.Deserialize<ItemDropArgs>(in clientPacket);

        static ValueTask InnerOnItemDropped(IWorldClient localClient, ItemDropArgs localArgs)
        {
            var (sourceSlot, destinationPoint, count) = localArgs;
            if (sourceSlot is 0) return default;
            if (count is > 1000 or < 0) return default;
            Item item = null;
            if (localClient.Aisling.Inventory.Items.TryGetValue(sourceSlot, out var value))
            {
                if (value is null) return default;
                item = value;
                item.Serial = EphemeralRandomIdGenerator<uint>.Shared.NextId;
            }

            if (item == null) return default;

            if (item.Stacks > 1)
            {
                if (count > item.Stacks)
                {
                    localClient.SendServerMessage(ServerMessageType.ActiveMessage, "Wait.. how many did I have again?");
                    return default;
                }
            }

            if (!item.Template.Flags.FlagIsSet(ItemFlags.Dropable))
            {
                localClient.SendServerMessage(ServerMessageType.ActiveMessage, $"{ServerSetup.Instance.Config.CantDropItemMsg}");
                return default;
            }
            var itemPosition = new Position(destinationPoint.X, destinationPoint.Y);

            if (localClient.Aisling.Position.DistanceFrom(itemPosition.X, itemPosition.Y) > 9)
            {
                localClient.SendServerMessage(ServerMessageType.ActiveMessage, "I can not do that. Too far.");
                return default;
            }
            if (localClient.Aisling.Map.IsWall(destinationPoint.X, destinationPoint.Y))
                if ((int)localClient.Aisling.Pos.X != destinationPoint.X || (int)localClient.Aisling.Pos.Y != destinationPoint.Y)
                {
                    localClient.SendServerMessage(ServerMessageType.ActiveMessage, "Something is in the way.");
                    return default;
                }

            if (item.Template.Flags.FlagIsSet(ItemFlags.Stackable))
            {
                if (count > item.Stacks)
                {
                    localClient.SendServerMessage(ServerMessageType.ActiveMessage, "Wait.. how many did I have again?");
                    return default;
                }

                var remaining = item.Stacks - (ushort)count;
                item.Dropping = count;

                if (remaining == 0)
                {
                    if (localClient.Aisling.EquipmentManager.RemoveFromInventory(item, true))
                    {
                        item.Release(localClient.Aisling, new Position(destinationPoint.X, destinationPoint.Y));

                        // Mileth Altar 
                        if (localClient.Aisling.Map.ID == 500)
                        {
                            if (itemPosition.X == 31 && itemPosition.Y == 52 || itemPosition.X == 31 && itemPosition.Y == 53)
                                item.Remove();
                        }
                    }
                }
                else
                {
                    var temp = new Item
                    {
                        Slot = item.Slot,
                        Image = item.Image,
                        DisplayImage = item.DisplayImage,
                        Durability = item.Durability,
                        ItemVariance = item.ItemVariance,
                        WeapVariance = item.WeapVariance,
                        ItemQuality = item.ItemQuality,
                        OriginalQuality = item.OriginalQuality,
                        InventorySlot = sourceSlot,
                        Stacks = (ushort)count,
                        Template = item.Template
                    };

                    temp.Release(localClient.Aisling, itemPosition);

                    // Mileth Altar 
                    if (localClient.Aisling.Map.ID == 500)
                    {
                        if (itemPosition.X == 31 && itemPosition.Y == 52 || itemPosition.X == 31 && itemPosition.Y == 53)
                            temp.Remove();
                    }

                    item.Stacks = (ushort)remaining;
                    localClient.SendRemoveItemFromPane(item.InventorySlot);
                    localClient.Aisling.Inventory.Set(item);
                    localClient.Aisling.Inventory.UpdateSlot(localClient.Aisling.Client, item);
                }
            }
            else
            {
                if (!item.Template.Flags.FlagIsSet(ItemFlags.DropScript))
                    if (localClient.Aisling.EquipmentManager.RemoveFromInventory(item, true))
                    {
                        item.Release(localClient.Aisling, new Position(destinationPoint.X, destinationPoint.Y));

                        // Mileth Altar 
                        if (localClient.Aisling.Map.ID == 500)
                        {
                            if (itemPosition.X == 31 && itemPosition.Y == 52 || itemPosition.X == 31 && itemPosition.Y == 53)
                                item.Remove();
                        }
                    }
            }

            localClient.Aisling.Inventory.UpdatePlayersWeight(localClient.Aisling.Client);
            localClient.SendAttributes(StatUpdateType.Primary);
            localClient.SendAttributes(StatUpdateType.ExpGold);

            if (!item.Template.Flags.FlagIsSet(ItemFlags.DropScript))
            {
                localClient.Aisling.Map?.Script.Item2?.OnItemDropped(localClient.Aisling.Client, item, itemPosition);
            }

            if (item.Scripts == null) return default;
            foreach (var itemScript in item.Scripts.Values)
            {
                itemScript?.OnDropped(localClient.Aisling, new Position(destinationPoint.X, destinationPoint.Y), localClient.Aisling.Map);
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnItemDropped);
    }

    /// <summary>
    /// 0x0B - Exit Request
    /// </summary>
    public ValueTask OnExitRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ExitRequestArgs>(in clientPacket);

        ValueTask InnerOnExitRequest(IWorldClient localClient, ExitRequestArgs localArgs)
        {
            if (localArgs.IsRequest)
                localClient.SendConfirmExit();
            else
            {
                var connectInfo = new IPEndPoint(IPAddress.Parse(ServerSetup.ServerOptions.Value.ServerIp), ServerSetup.Instance.Config.SERVER_PORT);
                var redirect = new Redirect(
                    EphemeralRandomIdGenerator<uint>.Shared.NextId,
                    new ConnectionInfo { Address = connectInfo.Address, Port = connectInfo.Port },
                    ServerType.Lobby, localClient.Crypto.Key, localClient.Crypto.Seed, $"socket[{localClient.Id}]");

                RedirectManager.Add(redirect);
                localClient.SendRedirect(redirect);
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnExitRequest);
    }

    /// <summary>
    /// 0x0D - Ignore Player
    /// </summary>
    public ValueTask OnIgnore(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client != null && !client.Aisling.LoggedIn) return default;

        var args = PacketSerializer.Deserialize<IgnoreArgs>(in clientPacket);

        static ValueTask InnerOnIgnore(IWorldClient localClient, IgnoreArgs localArgs)
        {
            var (ignoreType, targetName) = localArgs;

            switch (ignoreType)
            {
                case IgnoreType.Request:
                    var ignored = string.Join(", ", localClient.Aisling.IgnoredList);
                    localClient.SendServerMessage(ServerMessageType.NonScrollWindow, ignored);
                    break;
                case IgnoreType.AddUser:
                    if (targetName == null) break;
                    if (targetName.EqualsIgnoreCase("Death")) break;
                    if (localClient.Aisling.IgnoredList.ListContains(targetName)) break;
                    localClient.AddToIgnoreListDb(targetName);
                    break;
                case IgnoreType.RemoveUser:
                    if (targetName == null) break;
                    if (targetName.EqualsIgnoreCase("Death")) break;
                    if (!localClient.Aisling.IgnoredList.ListContains(targetName)) break;
                    localClient.RemoveFromIgnoreListDb(targetName);
                    break;
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnIgnore);
    }

    /// <summary>
    /// 0x0E - Public Chat
    /// </summary>
    public ValueTask OnPublicMessage(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling == null) return default;
        if (!client.Aisling.LoggedIn) return default;
        if (client.Aisling.IsSilenced) return default;

        var args = PacketSerializer.Deserialize<PublicMessageArgs>(in clientPacket);

        async ValueTask InnerOnPublicMessage(IWorldClient localClient, PublicMessageArgs localArgs)
        {
            var (publicMessageType, message) = localArgs;
            string response;
            IEnumerable<Aisling> audience;
            bool ParseCommand()
            {
                if (!localClient.Aisling.GameMaster) return false;
                if (!message.StartsWith("/")) return false;
                Commander.ParseChatMessage(localClient.Aisling.Client, message);
                return true;
            }

            if (ParseCommand()) return;

            switch (publicMessageType)
            {
                case PublicMessageType.Normal:
                    response = $"{localClient.Aisling.Username}: {message}";
                    audience = ObjectHandlers.GetObjects<Aisling>(localClient.Aisling.Map, n => localClient.Aisling.WithinRangeOf(n));
                    break;
                case PublicMessageType.Shout:
                    response = $"{localClient.Aisling.Username}! {message}";
                    audience = ObjectHandlers.GetObjects<Aisling>(localClient.Aisling.Map, n => localClient.Aisling.CurrentMapId == n.CurrentMapId);
                    break;
                case PublicMessageType.Chant:
                    response = message;
                    audience = ObjectHandlers.GetObjects<Aisling>(localClient.Aisling.Map, n => localClient.Aisling.WithinRangeOf(n, false));
                    break;
                default:
                    localClient.Disconnect();
                    return;
            }

            var playersToShowList = audience.Where(player => !player.IgnoredList.ListContains(localClient.Aisling.Username));

            foreach (var player in playersToShowList)
            {
                localClient.SendPublicMessage(player.Serial, publicMessageType, response);
            }

            var nearbyMundanes = localClient.Aisling.MundanesNearby();

            foreach (var npc in nearbyMundanes)
            {
                if (npc?.Scripts is null) continue;

                foreach (var script in npc.Scripts.Values)
                    script?.OnGossip(localClient.Aisling.Client, message);
            }

            localClient.Aisling.Map.Script.Item2.OnGossip(localClient.Aisling.Client, message);
        }

        return ExecuteHandler(client, args, InnerOnPublicMessage);
    }

    /// <summary>
    /// 0x0F - Spell Use
    /// </summary>
    public ValueTask OnUseSpell(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling == null) return default;
        if (!client.Aisling.LoggedIn) return default;

        var args = PacketSerializer.Deserialize<SpellUseArgs>(in clientPacket);

        ValueTask InnerOnUseSpell(IWorldClient localClient, SpellUseArgs localArgs)
        {
            var (sourceSlot, argsData) = localArgs;
            var spell = client.Aisling.SpellBook.TryGetSpells(i => i != null && i.Slot == sourceSlot).FirstOrDefault();
            if (spell == null)
            {
                client.SendCancelCasting();
                return default;
            }

            if (client.Aisling.CantCast)
            {
                if (spell.Template.ScriptName is not ("Ao Suain" or "Ao Sith"))
                {
                    client.SendServerMessage(ServerMessageType.OrangeBar1, "I am unable to cast that spell..");
                    client.SendCancelCasting();
                    return default;
                }
            }

            var info = new CastInfo
            {
                Slot = sourceSlot,
                Position = null,
                Target = 0
            };

            var source = localClient.Aisling;

            //it's impossible to know what kind of spell is being used during deserialization
            //there is no spell type specified in the packet, so we arent sure if the packet will
            //contains a prompt or target info
            //so we have to do that deserialization here, where we know what spell type we're dealing with
            //we also need to build the activation context for the spell
            switch (spell.Template.TargetType)
            {
                case SpellTemplate.SpellUseType.None:
                    return default;
                case SpellTemplate.SpellUseType.Prompt:
                    info.Data = PacketSerializer.Encoding.GetString(argsData);
                    break;
                case SpellTemplate.SpellUseType.ChooseTarget:
                    var targetIdSegment = new ArraySegment<byte>(argsData, 0, 4);
                    var targetPointSegment = new ArraySegment<byte>(argsData, 4, 4);

                    var targetId = (uint)((targetIdSegment[0] << 24)
                                          | (targetIdSegment[1] << 16)
                                          | (targetIdSegment[2] << 8)
                                          | targetIdSegment[3]);

                    var targetPoint = new Position(
                        (targetPointSegment[0] << 8) | targetPointSegment[1],
                        (targetPointSegment[2] << 8) | targetPointSegment[3]);
                    info.Position = targetPoint;
                    info.Target = (uint)targetId;
                    break;
                case SpellTemplate.SpellUseType.OneDigit:
                case SpellTemplate.SpellUseType.TwoDigit:
                case SpellTemplate.SpellUseType.ThreeDigit:
                case SpellTemplate.SpellUseType.FourDigit:
                case SpellTemplate.SpellUseType.NoTarget:
                    info.Target = source.Serial;
                    break;
            }

            localClient.Aisling.CastSpell(spell, info);
            return default;
        }

        return ExecuteHandler(client, args, InnerOnUseSpell);
    }

    /// <summary>
    /// 0x10 - On Redirect
    /// </summary>
    public ValueTask OnClientRedirected(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ClientRedirectedArgs>(in clientPacket);

        ValueTask InnerOnClientRedirected(IWorldClient localClient, ClientRedirectedArgs localArgs)
        {
            if (!RedirectManager.TryGetRemove(localArgs.Id, out var redirect))
            {
                ServerSetup.Logger($"{client.RemoteIp} tried to redirect to the world with invalid details.");
                localClient.Disconnect();
                return default;
            }

            //keep this case sensitive
            if (localArgs.Name != redirect.Name)
            {
                ServerSetup.Logger($"{client.RemoteIp} tried to impersonate a redirect with redirect {redirect.Id}.");
                localClient.Disconnect();
                return default;
            }

            ServerSetup.Logger($"Received successful redirect: {redirect.Id}");
            var existingAisling = Aislings.FirstOrDefault(user => user.Username.EqualsI(redirect.Name));

            //double logon, disconnect both clients
            if (existingAisling == null) return LoadAislingAsync(localClient, redirect);
            ServerSetup.Logger($"Duplicate login, player {redirect.Name}, disconnecting both clients.");
            existingAisling.Client.Disconnect();
            localClient.Disconnect();
            return default;
        }

        return ExecuteHandler(client, args, InnerOnClientRedirected);
    }

    private async ValueTask LoadAislingAsync(IWorldClient client, IRedirect redirect)
    {
        try
        {
            client.Crypto = new Crypto(redirect.Seed, redirect.Key, redirect.Name);
            var exists = await StorageManager.AislingBucket.CheckPassword(redirect.Name);
            var aisling = await StorageManager.AislingBucket.LoadAisling(redirect.Name, exists.Serial);

            client.Aisling = aisling;
            client.Aisling.Serial = aisling.Serial;
            client.Aisling.Pos = new Vector2(aisling.X, aisling.Y);
            aisling.Client = client as WorldClient;
            aisling.GameMaster = ServerSetup.Instance.Config.GameMasters?.Any(n =>
                string.Equals(n, aisling.Username, StringComparison.OrdinalIgnoreCase)) ?? false;

            if (client.Aisling._Str <= 0 || client.Aisling._Int <= 0 || client.Aisling._Wis <= 0 ||
                client.Aisling._Con <= 0 || client.Aisling._Dex <= 0)
            {
                ServerSetup.Logger($"Player {client.Aisling.Username} has corrupt stats.");
                client.Disconnect();
                return;
            }

            CheckOnLoad(client);
            if (client.Aisling.Map != null) client.Aisling.CurrentMapId = client.Aisling.Map.ID;
            client.LoggedIn(false);
            client.Aisling.EquipmentManager.Client = client as WorldClient;
            client.Aisling.CurrentWeight = 0;
            client.Aisling.ActiveStatus = ActivityStatus.Awake;

            if (aisling.GameMaster)
            {
                const string ip = "192.168.50.1";
                var ipLocal = IPAddress.Parse(ip);

                if (aisling.Client.RemoteIp.Equals(ServerSetup.Instance.IpAddress) ||
                    aisling.Client.RemoteIp.Equals(ipLocal))
                {
                    client.SendTargetedAnimation(Scope.NearbyAislings, 0, 100, 391, aisling.Serial, 0,
                        new Position(aisling.Pos));
                }
                else
                {
                    ServerSetup.Logger($"Failed to login GM from {client.RemoteIp}.");
                    Analytics.TrackEvent($"Failed to login GM from {client.RemoteIp}.");
                    client.Disconnect();
                    return;
                }
            }

            try
            {
                await client.Aisling.Client.Load();
                client.SendServerMessage(ServerMessageType.ActiveMessage,
                    $"{ServerSetup.Instance.Config.ServerWelcomeMessage}: {client.Aisling.Username}");
                client.SendAttributes(StatUpdateType.Full);
                client.LoggedIn(true);
                if (!client.Aisling.Dead) return;
                client.Aisling.Flags = AislingFlags.Ghost;
                client.Aisling.WarpToHell();
            }
            catch (Exception e)
            {
                ServerSetup.Logger($"Failed to add player {redirect.Name} to world server.");
                Crashes.TrackError(e);
                client.Disconnect();
            }
        }
        catch (Exception e)
        {
            ServerSetup.Logger($"Client with ip {client.RemoteIp} failed to load player {redirect.Name}.");
            Crashes.TrackError(e);
            client.Disconnect();
        }
        finally
        {
            var time = DateTime.UtcNow;
            ServerSetup.Logger($"{redirect.Name} logged in at: {time}");
            client.LastPing = time;
        }
    }

    private static void CheckOnLoad(IWorldClient client)
    {
        var aisling = client.Aisling;

        aisling.SkillBook ??= new SkillBook();
        aisling.SpellBook ??= new SpellBook();
        aisling.Inventory ??= new Inventory();
        aisling.BankManager ??= new Bank();
        aisling.EquipmentManager ??= new EquipmentManager(aisling.Client);
        aisling.QuestManager ??= new Quests();
    }

    /// <summary>
    /// 0x11 - Change Direction
    /// </summary>
    public ValueTask OnTurn(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<TurnArgs>(in clientPacket);

        static ValueTask InnerOnTurn(IWorldClient localClient, TurnArgs localArgs)
        {
            localClient.Aisling.Direction = (byte)localArgs.Direction;

            if (localClient.Aisling.Skulled)
            {
                localClient.SendLocation();
                return default;
            }

            localClient.Aisling.Turn();

            return default;
        }

        return ExecuteHandler(client, args, InnerOnTurn);
    }

    /// <summary>
    /// 0x13 - On Spacebar
    /// </summary>
    public ValueTask OnSpacebar(IWorldClient client, in ClientPacket clientPacket)
    {
        if (!client.Aisling.LoggedIn) return default;
        if (client.Aisling.IsDead()) return default;
        if (ServerSetup.Instance.Config.AssailsCancelSpells)
        {
            client.SendCancelCasting();
            return default;
        }

        if (client.Aisling.Skulled)
        {
            client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
            return default;
        }

        if (client.Aisling.CantAttack)
        {
            return default;
        }

        static ValueTask InnerOnSpacebar(IWorldClient localClient)
        {
            AssailRoutine(localClient);

            return default;
        }

        return ExecuteHandler(client, InnerOnSpacebar);
    }

    private static void AssailRoutine(IWorldClient lpClient)
    {
        var lastTemplate = string.Empty;

        foreach (var skill in lpClient.Aisling.GetAssails())
        {
            // Skill exists check
            if (skill?.Template == null) continue;
            if (lastTemplate == skill.Template.Name) continue;
            if (skill.Scripts == null) continue;

            // Skill can be used check
            if (!skill.Ready && skill.InUse) continue;

            skill.InUse = true;
            // Skill animation and execute
            ExecuteAbility(lpClient, skill);
            skill.InUse = false;

            // Skill cleanup
            skill.CurrentCooldown = skill.Template.Cooldown;
            lastTemplate = skill.Template.Name;
            lpClient.LastAssail = DateTime.UtcNow;
        }
    }

    private static void ExecuteAbility(IWorldClient lpClient, Skill lpSkill, bool optExecuteScript = true)
    {
        if (lpSkill.Template.ScriptName == "Assail")
        {
            // Uses a script equipped to the main-hand item if there is one
            var itemScripts = lpClient.Aisling.EquipmentManager.Equipment[1]?.Item?.WeaponScripts;

            if (itemScripts != null)
                foreach (var itemScript in itemScripts.Values.Where(itemScript => itemScript != null))
                    itemScript.OnUse(lpClient.Aisling);
        }

        if (!optExecuteScript) return;
        var script = lpSkill.Scripts.Values.First();
        script?.OnUse(lpClient.Aisling);
    }

    /// <summary>
    /// 0x18 - Request World List
    /// </summary>
    public ValueTask OnWorldListRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        if (!client.Aisling.LoggedIn) return default;
        if (client.IsRefreshing) return default;

        ValueTask InnerOnWorldListRequest(IWorldClient localClient)
        {
            localClient.SendWorldList(Aislings.ToList());

            return default;
        }

        return ExecuteHandler(client, InnerOnWorldListRequest);
    }

    /// <summary>
    /// 0x19 - Private Message
    /// </summary>
    public ValueTask OnWhisper(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<WhisperArgs>(in clientPacket);
        var readyTime = DateTime.UtcNow;
        if (readyTime.Subtract(client.LastWhisperMessageSent).TotalSeconds < 0.30) return default;

        ValueTask InnerOnWhisper(IWorldClient localClient, WhisperArgs localArgs)
        {
            var (targetName, message) = localArgs;
            var fromAisling = localClient.Aisling;
            if (targetName.Length > 12) return default;
            if (message.Length > 100) return default;
            client.LastWhisperMessageSent = readyTime;
            var maxLength = CONSTANTS.MAX_SERVER_MESSAGE_LENGTH - targetName.Length - 4;
            if (message.Length > maxLength)
                message = message[..maxLength];

            switch (targetName)
            {
                case "#" when client.Aisling.GameMaster:
                    foreach (var player in Aislings)
                    {
                        if (player.Client is null) return default;
                        player.Client.SendServerMessage(ServerMessageType.AdminMessage, $"{{=c{client.Aisling.Username}: {message}");
                    }
                    break;
                case "#" when client.Aisling.GameMaster != true:
                    client.SystemMessage("You cannot broadcast in this way.");
                    break;
                case "!" when !string.IsNullOrEmpty(client.Aisling.Clan):
                    foreach (var player in Aislings)
                    {
                        if (player.Client is null) return default;
                        if (player.Clan == client.Aisling.Clan)
                        {
                            player.Client.SendServerMessage(ServerMessageType.GuildChat, $"<!{client.Aisling.Username}> {message}");
                        }
                    }
                    break;
                case "!" when string.IsNullOrEmpty(client.Aisling.Clan):
                    client.SystemMessage("{=eYou're not in a guild.");
                    return default;
                case "!!" when client.Aisling.PartyMembers != null:
                    foreach (var player in Aislings)
                    {
                        if (player.Client is null) return default;
                        if (player.GroupParty == client.Aisling.GroupParty)
                        {
                            player.Client.SendServerMessage(ServerMessageType.GroupChat, $"[!{client.Aisling.Username}] {message}");
                        }
                    }
                    break;
                case "!!" when client.Aisling.PartyMembers == null:
                    client.SystemMessage("{=eYou're not in a group or party.");
                    return default;
            }

            var targetAisling = Aislings.FirstOrDefault(player => player.Username.EqualsI(targetName));

            if (targetAisling == null)
            {
                fromAisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, $"{targetName} is not online");
                return default;
            }

            if (targetAisling.Equals(fromAisling))
            {
                localClient.SendServerMessage(ServerMessageType.Whisper, "Talking to yourself?");
                return default;
            }

            if (targetAisling.ActiveStatus == ActivityStatus.DoNotDisturb)
            {
                localClient.SendServerMessage(ServerMessageType.Whisper, $"{targetAisling.Username} doesn't want to be bothered");
                return default;
            }

            localClient.SendServerMessage(ServerMessageType.Whisper, $"[{targetAisling.Username}]> {message}");
            targetAisling.Client.SendServerMessage(ServerMessageType.Whisper, $"[{fromAisling.Username}]: {message}");

            return default;
        }

        return ExecuteHandler(client, args, InnerOnWhisper);
    }

    /// <summary>
    /// 0x1B - User Option Toggle
    /// </summary>
    public ValueTask OnUserOptionToggle(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client.Aisling.GameSettings == null) return default;

        var args = PacketSerializer.Deserialize<UserOptionToggleArgs>(in clientPacket);

        static ValueTask InnerOnUsrOptionToggle(IWorldClient localClient, UserOptionToggleArgs localArgs)
        {
            if (localArgs.UserOption == UserOption.Request)
            {
                localClient.SendServerMessage(ServerMessageType.UserOptions, localClient.Aisling.GameSettings.ToString());

                return default;
            }

            localClient.Aisling.GameSettings.Toggle(localArgs.UserOption);
            localClient.SendServerMessage(ServerMessageType.UserOptions, localClient.Aisling.GameSettings.ToString(localArgs.UserOption));

            return default;
        }

        return ExecuteHandler(client, args, InnerOnUsrOptionToggle);
    }

    /// <summary>
    /// 0x1C - Item Usage
    /// </summary>
    public ValueTask OnUseItem(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling?.Map is not { Ready: true }) return default;
        if (!client.Aisling.LoggedIn) return default;
        
        if (client.Aisling.IsDead())
        {
            client.SendServerMessage(ServerMessageType.ActiveMessage, "You cannot do that.");
            return default;
        }
        
        if (client.Aisling.HasDebuff("Skulled") || client.Aisling.IsParalyzed || client.Aisling.IsFrozen || client.Aisling.IsStopped)
        {
            client.SendServerMessage(ServerMessageType.ActiveMessage, "You cannot do that.");
            return default;
        }
        
        // Speed equipping prevent (movement)
        if (!client.IsEquipping)
        {
            client.SendServerMessage(ServerMessageType.ActiveMessage, "Slow down");
            return default;
        }
        
        var args = PacketSerializer.Deserialize<ItemUseArgs>(in clientPacket);

        static ValueTask InnerOnUseItem(IWorldClient localClient, ItemUseArgs localArgs)
        {
            var item = localClient.Aisling.Inventory.Get(i => i != null && i.InventorySlot == localArgs.SourceSlot).FirstOrDefault();
            if (item?.Template == null) return default;

            if (item.Template.Flags.FlagIsSet(ItemFlags.Equipable))
                localClient.LastEquip = DateTime.UtcNow;

            var activated = false;

            // Run Scripts on item on use
            if (!string.IsNullOrEmpty(item.Template.ScriptName)) item.Scripts ??= ScriptManager.Load<ItemScript>(item.Template.ScriptName, item);
            if (!string.IsNullOrEmpty(item.Template.WeaponScript)) item.WeaponScripts ??= ScriptManager.Load<WeaponScript>(item.Template.WeaponScript, item);

            if (item.Scripts == null)
            {
                localClient.SendServerMessage(ServerMessageType.OrangeBar1, $"{ServerSetup.Instance.Config.CantUseThat}");
            }
            else
            {
                var script = item.Scripts.Values.First();
                script?.OnUse(localClient.Aisling, localArgs.SourceSlot);
                activated = true;
            }

            if (!activated) return default;
            if (!item.Template.Flags.FlagIsSet(ItemFlags.Consumable)) return default;

            int stack = item.Stacks;
            if (item.Stacks >= 1)
                stack--;

            if (stack >= 1)
            {
                localClient.SendRemoveItemFromPane(item.InventorySlot);
                localClient.Aisling.Inventory.Set(item);
                localClient.Aisling.Inventory.UpdateSlot(localClient.Aisling.Client, item);
            }
            else
            {
                localClient.Aisling.EquipmentManager.RemoveFromInventory(item, true);
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnUseItem);
    }

    /// <summary>
    /// 0x1D - Emote Usage
    /// </summary>
    public ValueTask OnEmote(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling == null) return default;
        if (!client.Aisling.LoggedIn) return default;
        if (client.IsRefreshing) return default;
        if (client.Aisling.IsDead()) return default;
        if (client.Aisling.Skulled)
        {
            client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
            client.SendLocation();
            return default;
        }

        var args = PacketSerializer.Deserialize<EmoteArgs>(in clientPacket);

        ValueTask InnerOnEmote(IWorldClient localClient, EmoteArgs localArgs)
        {
            if ((int)localArgs.BodyAnimation <= 44)
                localClient.SendBodyAnimation(localClient.Aisling.Serial, localArgs.BodyAnimation, 120);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnEmote);
    }

    /// <summary>
    /// 0x24 - Drop Gold
    /// </summary>
    public ValueTask OnGoldDropped(IWorldClient client, in ClientPacket clientPacket)
    {
        if (client?.Aisling == null) return default;
        if (!client.Aisling.LoggedIn) return default;
        if (client.Aisling.IsDead()) return default;
        if (client.Aisling.CantAttack) return default;
        if (client.Aisling.Skulled)
        {
            client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
            client.SendLocation();
            return default;
        }

        var args = PacketSerializer.Deserialize<GoldDropArgs>(in clientPacket);

        ValueTask InnerOnGoldDropped(IWorldClient localClient, GoldDropArgs localArgs)
        {
            var (amount, destinationPoint) = localArgs;
            if (amount <= 0) return default;

            if (client.Aisling.GoldPoints >= (uint)amount)
            {
                client.Aisling.GoldPoints -= (uint)amount;
                if (client.Aisling.GoldPoints <= 0)
                    client.Aisling.GoldPoints = 0;

                client.SendServerMessage(ServerMessageType.OrangeBar1, $"{ServerSetup.Instance.Config.YouDroppedGoldMsg}");
                client.SendTargetedMessage(Scope.NearbyAislingsExludingSelf, ServerMessageType.OrangeBar1, $"{ServerSetup.Instance.Config.UserDroppedGoldMsg.Replace("noname", client.Aisling.Username)}");

                Money.Create(client.Aisling, (uint)amount, new Position(destinationPoint.X, destinationPoint.Y));
                client.SendAttributes(StatUpdateType.ExpGold);
            }
            else
            {
                client.SendServerMessage(ServerMessageType.OrangeBar1, $"{ServerSetup.Instance.Config.NotEnoughGoldToDropMsg}");
            }
        }

        return ExecuteHandler(client, args, InnerOnGoldDropped);
    }

    /// <summary>
    /// 0x29 - Drop Item on Sprite
    /// </summary>
    public ValueTask OnItemDroppedOnCreature(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ItemDroppedOnCreatureArgs>(in clientPacket);

        ValueTask InnerOnItemDroppedOnCreature(IWorldClient localClient, ItemDroppedOnCreatureArgs localArgs)
        {
            (var sourceSlot, var targetId, var count) = localArgs;
            var map = localClient.Aisling.MapInstance;

            if (!map.TryGetObject<Creature>(targetId, out var target))
                return default;

            if (!localClient.Aisling.WithinRange(target, Options.TradeRange))
                return default;

            if (!localClient.Aisling.Inventory.TryGetObject(sourceSlot, out var item))
                return default;

            if (item.Count < count)
                return default;

            target.OnItemDroppedOn(localClient.Aisling, sourceSlot, count);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnItemDroppedOnCreature);
    }

    /// <summary>
    /// 0x2A - Drop Gold on Sprite
    /// </summary>
    public ValueTask OnGoldDroppedOnCreature(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<GoldDroppedOnCreatureArgs>(in clientPacket);

        ValueTask InnerOnGoldDroppedOnCreature(IWorldClient localClient, GoldDroppedOnCreatureArgs localArgs)
        {
            (var amount, var targetId) = localArgs;

            var map = localClient.Aisling.MapInstance;

            if (amount <= 0)
                return default;

            if (!map.TryGetObject<Creature>(targetId, out var target))
                return default;

            if (!localClient.Aisling.WithinRange(target, Options.TradeRange))
                return default;

            target.OnGoldDroppedOn(localClient.Aisling, amount);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnGoldDroppedOnCreature);
    }

    /// <summary>
    /// 0x2D - Request Player Profile & Load Character Meta Data (Skills/Spells)
    /// </summary>
    public ValueTask OnProfileRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        static ValueTask InnerOnProfileRequest(IWorldClient localClient)
        {
            localClient.SendSelfProfile();

            return default;
        }

        return ExecuteHandler(client, InnerOnProfileRequest);
    }

    /// <summary>
    /// 0x2E - Request Party Join
    /// </summary>
    public ValueTask OnGroupRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<GroupRequestArgs>(in clientPacket);

        ValueTask InnerOnGroupRequest(IWorldClient localClient, GroupRequestArgs localArgs)
        {
            (var groupRequestType, var targetName) = localArgs;
            var target = Aislings.FirstOrDefault(user => user.Name.EqualsI(targetName));

            if (target == null)
            {
                localClient.Aisling.SendActiveMessage($"{targetName} is nowhere to be found");

                return default;
            }

            var aisling = localClient.Aisling;

            switch (groupRequestType)
            {
                case GroupRequestType.FormalInvite:
                    Logger.WithProperty(aisling)
                          .LogWarning(
                              "Aisling {@AislingName} attempted to send a formal group invite to the server. This type of group request is something only the server should send",
                              localClient);

                    return default;
                case GroupRequestType.TryInvite:
                    {
                        GroupService.Invite(aisling, target);

                        return default;
                    }
                case GroupRequestType.AcceptInvite:
                    {
                        GroupService.AcceptInvite(target, aisling);

                        return default;
                    }
                case GroupRequestType.Groupbox:
                    //TODO: implement this maybe

                    return default;
                case GroupRequestType.RemoveGroupBox:
                    //TODO: implement this maybe

                    return default;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        return ExecuteHandler(client, args, InnerOnGroupRequest);
    }

    /// <summary>
    /// 0x2F - Toggle Group
    /// </summary>
    public ValueTask OnToggleGroup(IWorldClient client, in ClientPacket clientPacket)
    {
        static ValueTask InnerOnToggleGroup(IWorldClient localClient)
        {
            //don't need to send the updated option, because they arent currently looking at it
            localClient.Aisling.Options.Toggle(UserOption.Group);

            if (localClient.Aisling.Group != null)
                localClient.Aisling.Group?.Leave(localClient.Aisling);
            else
                localClient.SendSelfProfile();

            return default;
        }

        return ExecuteHandler(client, InnerOnToggleGroup);
    }

    /// <summary>
    /// 0x30 - Swap Slot
    /// </summary>
    public ValueTask OnSwapSlot(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<SwapSlotArgs>(in clientPacket);

        static ValueTask InnerOnSwapSlot(IWorldClient localClient, SwapSlotArgs localArgs)
        {
            (var panelType, var slot1, var slot2) = localArgs;

            switch (panelType)
            {
                case PanelType.Inventory:
                    localClient.Aisling.Inventory.TrySwap(slot1, slot2);

                    break;
                case PanelType.SpellBook:
                    localClient.Aisling.SpellBook.TrySwap(slot1, slot2);

                    break;
                case PanelType.SkillBook:
                    localClient.Aisling.SkillBook.TrySwap(slot1, slot2);

                    break;
                case PanelType.Equipment:
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnSwapSlot);
    }

    /// <summary>
    /// 0x38 - Request Refresh
    /// </summary>
    public ValueTask OnRefreshRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        static ValueTask InnerOnRefreshRequest(IWorldClient localClient)
        {
            localClient.Aisling.Refresh();

            return default;
        }

        return ExecuteHandler(client, InnerOnRefreshRequest);
    }

    /// <summary>
    /// 0x39 - Request Pursuit
    /// </summary>
    public ValueTask OnPursuitRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<PursuitRequestArgs>(in clientPacket);

        ValueTask InnerOnPursuitRequest(IWorldClient localClient, PursuitRequestArgs localArgs)
        {
            var dialog = localClient.Aisling.ActiveDialog.Get();

            if (dialog == null)
            {
                Logger.WithProperty(localClient.Aisling)
                    .WithProperty(localArgs)
                    .LogWarning(
                        "Aisling {@AislingName} attempted to access a dialog, but there is no active dialog (possibly packeting)",
                        localClient.Aisling.Name);

                return default;
            }

            //get args if the type is not a "menuWithArgs", this type should not have any new args
            if (dialog.Type is not ChaosDialogType.MenuWithArgs && (localArgs.Args != null))
                dialog.MenuArgs = new ArgumentCollection(dialog.MenuArgs.Append(localArgs.Args.Last()));

            dialog.Next(localClient.Aisling, (byte)localArgs.PursuitId);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnPursuitRequest);
    }

    /// <summary>
    /// 0x3A - Mundane Input Response
    /// </summary>
    public ValueTask OnDialogResponse(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<DialogResponseArgs>(in clientPacket);

        ValueTask InnerOnDialogResponse(IWorldClient localClient, DialogResponseArgs localArgs)
        {
            var dialog = localClient.Aisling.ActiveDialog.Get();

            if (dialog == null)
            {
                localClient.Aisling.DialogHistory.Clear();

                Logger.WithProperty(localClient.Aisling)
                    .WithProperty(localArgs)
                    .LogWarning(
                        "Aisling {@AislingName} attempted to access a dialog, but there is no active dialog (possibly packeting)",
                        localClient.Aisling.Name);

                return default;
            }

            //since we always send a dialog id of 0, we can easily get the result without comparing ids
            var dialogResult = (DialogResult)localArgs.DialogId;

            if (localArgs.Args != null)
                dialog.MenuArgs = new ArgumentCollection(dialog.MenuArgs.Append(localArgs.Args.Last()));

            switch (dialogResult)
            {
                case DialogResult.Previous:
                    dialog.Previous(localClient.Aisling);

                    break;
                case DialogResult.Close:
                    localClient.Aisling.DialogHistory.Clear();

                    break;
                case DialogResult.Next:
                    dialog.Next(localClient.Aisling, localArgs.Option);

                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnDialogResponse);
    }

    /// <summary>
    /// 0x3B - Request Bulletin Board
    /// </summary>
    public ValueTask OnBoardRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        static ValueTask InnerOnBoardRequest(IWorldClient localClient)
        {
            localClient.SendBoard();

            return default;
        }

        /*
        //this packet is literally retarded
        private void Board(Client client, ClientPacket packet)
        {
            var type = (BoardRequestType)packet.ReadByte();

            switch (type) //request type
            {
                case BoardRequestType.BoardList:
                    //Board List
                    //client.Enqueue(client.ServerPackets.BulletinBoard);
                    break;
                case BoardRequestType.ViewBoard:
                    {
                        //Post list for boardNum
                        ushort boardNum = packet.ReadUInt16();
                        ushort startPostNum = packet.ReadUInt16(); //you send the newest mail first, which will have the highest number. startPostNum counts down.
                        //packet.ReadByte() is always 0xF0(240) ???
                        //the client spam requests this like holy fuck, put a timer on this so you only send 1 packet
                        break;
                    }
                case BoardRequestType.ViewPost:
                    {
                        //Post
                        ushort boardNum = packet.ReadUInt16();
                        ushort postId = packet.ReadUInt16(); //the post number they want, counting up (what the fuck?)
                        //mailbox = boardNum 0
                        //otherwise boardnum is the index of the board you're accessing
                        switch (packet.ReadSByte()) //board controls
                        {
                            case -1: //clicked next for older post
                                break;
                            case 0: //requested a specific post from the post list
                                break;
                            case 1: //clicked previous for newer post
                                break;
                        }
                        break;
                    }
                case BoardRequestType.NewPost: //new post
                    {
                        ushort boardNum = packet.ReadUInt16();
                        string subject = packet.ReadString8();
                        string message = packet.ReadString16();
                        break;
                    }
                case BoardRequestType.Delete: //delete post
                    {
                        ushort boardNum = packet.ReadUInt16();
                        ushort postId = packet.ReadUInt16(); //the post number they want to delete, counting up
                        break;
                    }

                case BoardRequestType.SendMail: //send mail
                    {
                        ushort boardNum = packet.ReadUInt16();
                        string targetName = packet.ReadString8();
                        string subject = packet.ReadString8();
                        string message = packet.ReadString16();
                        break;
                    }
                case BoardRequestType.Highlight: //highlight message
                    {
                        ushort boardNum = packet.ReadUInt16();
                        ushort postId = packet.ReadUInt16();
                        break;
                    }
            }

            Server.WriteLogAsync($@"Recv [{(ClientOpCodes)packet.OpCode}] TYPE: {type}", client);
            Game.Boards(client);
        }
         */

        return ExecuteHandler(client, InnerOnBoardRequest);
    }

    /// <summary>
    /// 0x3E - Skill Use
    /// </summary>
    public ValueTask OnUseSkill(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<SkillUseArgs>(in clientPacket);

        static ValueTask InnerOnUseSkill(IWorldClient localClient, SkillUseArgs localArgs)
        {
            localClient.Aisling.TryUseSkill(localArgs.SourceSlot);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnUseSkill);
    }

    /// <summary>
    /// 0x3F - World Map Click
    /// </summary>
    public ValueTask OnWorldMapClick(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<WorldMapClickArgs>(in clientPacket);

        static ValueTask InnerOnWorldMapClick(IWorldClient localClient, WorldMapClickArgs localArgs)
        {
            ServerSetup.Instance.GlobalWorldMapTemplateCache.TryGetValue(localClient.Aisling.World, out var worldMap);

            //if player is not in a world map, return
            if (worldMap == null) return default;

            localClient.Aisling.Client.PendingNode =
                worldMap.Portals.Find(i => i.Destination.AreaID == localArgs.MapId);

            if (!localClient.Aisling.Client.MapOpen) return default;
            var selectedPortalNode = localClient.Aisling.Client.PendingNode;
            if (selectedPortalNode == null) return default;
            localClient.Aisling.Client.MapOpen = false;

            for (var i = 0; i < 1; i++)
            {
                localClient.Aisling.CurrentMapId = selectedPortalNode.Destination.AreaID;
                localClient.Aisling.Pos = new Vector2(selectedPortalNode.Destination.Location.X, selectedPortalNode.Destination.Location.Y);
                localClient.Aisling.X = selectedPortalNode.Destination.Location.X;
                localClient.Aisling.Y = selectedPortalNode.Destination.Location.Y;
                localClient.Aisling.Client.TransitionToMap(selectedPortalNode.Destination.AreaID, selectedPortalNode.Destination.Location);
            }

            localClient.Aisling.Client.PendingNode = null;
            return default;
        }

        return ExecuteHandler(client, args, InnerOnWorldMapClick);
    }

    /// <summary>
    /// 0x43 - Client Click
    /// </summary>
    public ValueTask OnClick(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ClickArgs>(in clientPacket);

        ValueTask InnerOnClick(IWorldClient localClient, ClickArgs localArgs)
        {
            (var targetId, var targetPoint) = localArgs;

            if (targetId.HasValue)
            {
                if (targetId == uint.MaxValue)
                {
                    var f1Merchant = MerchantFactory.Create(
                        Options.F1MerchantTemplateKey,
                        localClient.Aisling.MapInstance,
                        Point.From(localClient.Aisling));

                    f1Merchant.OnClicked(localClient.Aisling);

                    return default;
                }

                localClient.Aisling.MapInstance.Click(targetId.Value, localClient.Aisling);
            }
            else if (targetPoint is not null)
                localClient.Aisling.MapInstance.Click(targetPoint, localClient.Aisling);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnClick);
    }

    /// <summary>
    /// 0x44 - Unequip Item
    /// </summary>
    public ValueTask OnUnequip(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<UnequipArgs>(in clientPacket);

        static ValueTask InnerOnUnequip(IWorldClient localClient, UnequipArgs localArgs)
        {
            localClient.Aisling.EquipmentManager.RemoveFromExisting((int)localArgs.EquipmentSlot);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnUnequip);
    }

    /// <summary>
    /// 0x47 - Stat Raised
    /// </summary>
    public ValueTask OnRaiseStat(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<RaiseStatArgs>(in clientPacket);

        static ValueTask InnerOnRaiseStat(IWorldClient localClient, RaiseStatArgs localArgs)
        {
            if (localClient.Aisling.UserStatSheet.UnspentPoints > 0)
                if (localClient.Aisling.UserStatSheet.IncrementStat(localArgs.Stat))
                {
                    if (localArgs.Stat == Stat.STR)
                        localClient.Aisling.UserStatSheet.SetMaxWeight(LevelUpFormulae.Default.CalculateMaxWeight(localClient.Aisling));

                    localClient.SendAttributes(StatUpdateType.Full);
                }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnRaiseStat);
    }

    /// <summary>
    /// 0x4A - Client Exchange
    /// </summary>
    public ValueTask OnExchange(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ExchangeArgs>(in clientPacket);

        ValueTask InnerOnExchange(IWorldClient localClient, ExchangeArgs localArgs)
        {
            var exchange = localClient.Aisling.ActiveObject.TryGet<Exchange>();

            if (exchange == null)
                return default;

            if (exchange.GetOtherUser(localClient.Aisling).Id != localArgs.OtherPlayerId)
                return default;

            switch (localArgs.ExchangeRequestType)
            {
                case ExchangeRequestType.StartExchange:
                    Logger.WithProperty(localClient)
                          .LogWarning(
                              "Aisling {@AislingName} attempted to directly start an exchange. This should not be possible unless packeting",
                              localClient.Aisling.Name);

                    break;
                case ExchangeRequestType.AddItem:
                    exchange.AddItem(localClient.Aisling, localArgs.SourceSlot!.Value);

                    break;
                case ExchangeRequestType.AddStackableItem:
                    exchange.AddStackableItem(localClient.Aisling, localArgs.SourceSlot!.Value, localArgs.ItemCount!.Value);

                    break;
                case ExchangeRequestType.SetGold:
                    exchange.SetGold(localClient.Aisling, localArgs.GoldAmount!.Value);

                    break;
                case ExchangeRequestType.Cancel:
                    exchange.Cancel(localClient.Aisling);

                    break;
                case ExchangeRequestType.Accept:
                    exchange.Accept(localClient.Aisling);

                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnExchange);
    }

    /// <summary>
    /// 0x4D - Begin Casting
    /// </summary>
    public ValueTask OnBeginChant(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<BeginChantArgs>(in clientPacket);

        static ValueTask InnerOnBeginChant(IWorldClient localClient, BeginChantArgs localArgs)
        {
            localClient.Aisling.UserState |= UserState.IsChanting;
            localClient.Aisling.ChantTimer.Start(localArgs.CastLineCount);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnBeginChant);
    }

    /// <summary>
    /// 0x4E - Casting
    /// </summary>
    public ValueTask OnChant(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<DisplayChantArgs>(in clientPacket);

        static ValueTask InnerOnChant(IWorldClient localClient, DisplayChantArgs localArgs)
        {
            localClient.Aisling.Chant(localArgs.ChantMessage);

            return default;
        }

        return ExecuteHandler(client, args, InnerOnChant);
    }

    /// <summary>
    /// 0x4F - Player Portrait & Profile Message
    /// </summary>
    public ValueTask OnProfile(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<ProfileArgs>(in clientPacket);

        static ValueTask InnerOnProfile(IWorldClient localClient, ProfileArgs localArgs)
        {
            (var portraitData, var profileMessage) = localArgs;
            localClient.Aisling.Portrait = portraitData;
            localClient.Aisling.ProfileText = profileMessage;

            return default;
        }

        return ExecuteHandler(client, args, InnerOnProfile);
    }

    /// <summary>
    /// 0x79 - Player Social Status
    /// </summary>
    public ValueTask OnSocialStatus(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<SocialStatusArgs>(in clientPacket);

        static ValueTask InnerOnSocialStatus(IWorldClient localClient, SocialStatusArgs localArgs)
        {
            localClient.Aisling.SocialStatus = localArgs.SocialStatus;

            return default;
        }

        return ExecuteHandler(client, args, InnerOnSocialStatus);
    }

    /// <summary>
    /// 0x7B - Request Metafile
    /// </summary>
    public ValueTask OnMetaDataRequest(IWorldClient client, in ClientPacket clientPacket)
    {
        var args = PacketSerializer.Deserialize<MetaDataRequestArgs>(in clientPacket);

        ValueTask InnerOnMetaDataRequest(IWorldClient localClient, MetaDataRequestArgs localArgs)
        {
            (var metadataRequestType, var name) = localArgs;

            switch (metadataRequestType)
            {
                case MetaDataRequestType.DataByName:
                    localClient.SendMetaData(MetaDataRequestType.DataByName, MetaDataStore, name);

                    break;
                case MetaDataRequestType.AllCheckSums:
                    localClient.SendMetaData(MetaDataRequestType.AllCheckSums, MetaDataStore);

                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            return default;
        }

        return ExecuteHandler(client, args, InnerOnMetaDataRequest);
    }

    #endregion

    #region Connection / Handler

    public override ValueTask HandlePacketAsync(IWorldClient client, in ClientPacket packet)
    {
        var handler = ClientHandlers[(byte)packet.OpCode];

        var trackers = client.Aisling?.Trackers;

        if ((trackers != null) && IsManualAction(packet.OpCode))
            trackers.LastManualAction = DateTime.UtcNow;

        return handler?.Invoke(client, in packet) ?? default;
    }

    protected override void IndexHandlers()
    {
        if (ClientHandlers == null!)
            return;

        base.IndexHandlers();

        //ClientHandlers[(byte)ClientOpCode.] =
        ClientHandlers[(byte)ClientOpCode.RequestMapData] = OnMapDataRequest;
        ClientHandlers[(byte)ClientOpCode.ClientWalk] = OnClientWalk;
        ClientHandlers[(byte)ClientOpCode.Pickup] = OnPickup;
        ClientHandlers[(byte)ClientOpCode.ItemDrop] = OnItemDropped;
        ClientHandlers[(byte)ClientOpCode.ExitRequest] = OnExitRequest;
        //ClientHandlers[(byte)ClientOpCode.DisplayObjectRequest] =
        ClientHandlers[(byte)ClientOpCode.Ignore] = OnIgnore;
        ClientHandlers[(byte)ClientOpCode.PublicMessage] = OnPublicMessage;
        ClientHandlers[(byte)ClientOpCode.UseSpell] = OnUseSpell;
        ClientHandlers[(byte)ClientOpCode.ClientRedirected] = OnClientRedirected;
        ClientHandlers[(byte)ClientOpCode.Turn] = OnTurn;
        ClientHandlers[(byte)ClientOpCode.SpaceBar] = OnSpacebar;
        ClientHandlers[(byte)ClientOpCode.WorldListRequest] = OnWorldListRequest;
        ClientHandlers[(byte)ClientOpCode.Whisper] = OnWhisper;
        ClientHandlers[(byte)ClientOpCode.UserOptionToggle] = OnUserOptionToggle;
        ClientHandlers[(byte)ClientOpCode.UseItem] = OnUseItem;
        ClientHandlers[(byte)ClientOpCode.Emote] = OnEmote;
        ClientHandlers[(byte)ClientOpCode.GoldDrop] = OnGoldDropped;
        ClientHandlers[(byte)ClientOpCode.ItemDroppedOnCreature] = OnItemDroppedOnCreature;
        ClientHandlers[(byte)ClientOpCode.GoldDroppedOnCreature] = OnGoldDroppedOnCreature;
        ClientHandlers[(byte)ClientOpCode.RequestProfile] = OnProfileRequest;
        ClientHandlers[(byte)ClientOpCode.GroupRequest] = OnGroupRequest;
        ClientHandlers[(byte)ClientOpCode.ToggleGroup] = OnToggleGroup;
        ClientHandlers[(byte)ClientOpCode.SwapSlot] = OnSwapSlot;
        ClientHandlers[(byte)ClientOpCode.RequestRefresh] = OnRefreshRequest;
        ClientHandlers[(byte)ClientOpCode.PursuitRequest] = OnPursuitRequest;
        ClientHandlers[(byte)ClientOpCode.DialogResponse] = OnDialogResponse;
        ClientHandlers[(byte)ClientOpCode.BoardRequest] = OnBoardRequest;
        ClientHandlers[(byte)ClientOpCode.UseSkill] = OnUseSkill;
        ClientHandlers[(byte)ClientOpCode.WorldMapClick] = OnWorldMapClick;
        ClientHandlers[(byte)ClientOpCode.Click] = OnClick;
        ClientHandlers[(byte)ClientOpCode.Unequip] = OnUnequip;
        ClientHandlers[(byte)ClientOpCode.RaiseStat] = OnRaiseStat;
        ClientHandlers[(byte)ClientOpCode.Exchange] = OnExchange;
        ClientHandlers[(byte)ClientOpCode.BeginChant] = OnBeginChant;
        ClientHandlers[(byte)ClientOpCode.Chant] = OnChant;
        ClientHandlers[(byte)ClientOpCode.Profile] = OnProfile;
        ClientHandlers[(byte)ClientOpCode.SocialStatus] = OnSocialStatus;
        ClientHandlers[(byte)ClientOpCode.MetaDataRequest] = OnMetaDataRequest;
    }

    protected override void OnConnection(IAsyncResult ar)
    {
        var serverSocket = (Socket)ar.AsyncState!;
        var clientSocket = serverSocket.EndAccept(ar);

        serverSocket.BeginAccept(OnConnection, serverSocket);

        var ip = clientSocket.RemoteEndPoint as IPEndPoint;
        Logger.LogDebug("Incoming connection from {@Ip}", ip!.ToString());

        var client = ClientProvider.CreateClient(clientSocket);
        client.OnDisconnected += OnDisconnect;

        Logger.LogDebug("Connection established with {@ClientIp}", client.RemoteIp.ToString());

        if (!ClientRegistry.TryAdd(client))
        {
            Logger.WithProperty(client)
                  .LogError("Somehow two clients got the same id");

            client.Disconnect();
            clientSocket.Disconnect(false);

            return;
        }

        client.BeginReceive();
    }

    private async void OnDisconnect(object? sender, EventArgs e)
    {
        var client = (IWorldClient)sender!;
        var aisling = client.Aisling;

        try
        {
            //remove client from client list
            ClientRegistry.TryRemove(client.Id, out _);
            client.SendServerMessage(ServerMessageType.ClosePopup, string.Empty);

            if (aisling == null) return;
            //if the player has an exchange open, cancel it so items are returned
            aisling.CancelExchange();

            //leave the group if in one
            if (aisling.GroupId != 0)
                Party.RemovePartyMember(aisling);

            //save aisling
            aisling.LastLogged = DateTime.UtcNow;
            aisling.LoggedIn = false;
            await SaveUserAsync(client.Aisling);

            //remove aisling from map
            client.SendRemoveObject((uint)aisling.Serial);
        }
        catch (Exception ex)
        {
            Logger.WithProperty(client)
                  .LogError(ex, "Exception thrown while {@AislingName} was trying to disconnect", client.Aisling?.Username ?? "N/A");
        }
    }

    private bool IsManualAction(ClientOpCode opCode) => opCode switch
    {
        ClientOpCode.ClientWalk => true,
        ClientOpCode.Pickup => true,
        ClientOpCode.ItemDrop => true,
        ClientOpCode.ExitRequest => true,
        ClientOpCode.Ignore => true,
        ClientOpCode.PublicMessage => true,
        ClientOpCode.UseSpell => true,
        ClientOpCode.ClientRedirected => true,
        ClientOpCode.Turn => true,
        ClientOpCode.SpaceBar => true,
        ClientOpCode.WorldListRequest => true,
        ClientOpCode.Whisper => true,
        ClientOpCode.UserOptionToggle => true,
        ClientOpCode.UseItem => true,
        ClientOpCode.Emote => true,
        ClientOpCode.SetNotepad => true,
        ClientOpCode.GoldDrop => true,
        ClientOpCode.ItemDroppedOnCreature => true,
        ClientOpCode.GoldDroppedOnCreature => true,
        ClientOpCode.RequestProfile => true,
        ClientOpCode.GroupRequest => true,
        ClientOpCode.ToggleGroup => true,
        ClientOpCode.SwapSlot => true,
        ClientOpCode.RequestRefresh => true,
        ClientOpCode.PursuitRequest => true,
        ClientOpCode.DialogResponse => true,
        ClientOpCode.BoardRequest => true,
        ClientOpCode.UseSkill => true,
        ClientOpCode.WorldMapClick => true,
        ClientOpCode.Click => true,
        ClientOpCode.Unequip => true,
        ClientOpCode.RaiseStat => true,
        ClientOpCode.Exchange => true,
        ClientOpCode.BeginChant => true,
        ClientOpCode.Chant => true,
        ClientOpCode.Profile => true,
        ClientOpCode.SocialStatus => true,
        _ => false
    };

    #endregion
}