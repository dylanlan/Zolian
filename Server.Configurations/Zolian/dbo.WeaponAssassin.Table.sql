USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Spell__08411774]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Spell__074CF33B]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__IsPos__0658CF02]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Spell__0564AAC9]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Regen__04708690]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAssas__Dmg__037C6257]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAssas__Hit__02883E1E]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Magic__019419E5]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Dexte__009FF5AC]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Const__7FABD173]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Wisdo__7EB7AD3A]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Intel__7DC38901]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Stren__7CCF64C8]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Armor__7BDB408F]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAssass__MP__7AE71C56]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAssass__HP__79F2F81D]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Color__78FED3E4]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Stage__780AAFAB]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__DropR__77168B72]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Level__76226739]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Class__752E4300]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Worth__743A1EC7]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Encha__7345FA8E]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Carry__7251D655]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Flags__715DB21C]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Displ__70698DE3]
GO
ALTER TABLE [dbo].[WeaponAssassin] DROP CONSTRAINT [DF__WeaponAss__Image__6F7569AA]
GO
/****** Object:  Table [dbo].[WeaponAssassin]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponAssassin]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponAssassin]
GO
/****** Object:  Table [dbo].[WeaponAssassin]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponAssassin](
	[WeaponId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[OffHandImage] [int] NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](40) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[SecondaryOffensiveElement] [varchar](15) NOT NULL,
	[SecondaryDefensiveElement] [varchar](15) NOT NULL,
	[CarryWeight] [int] NOT NULL,
	[Enchantable] [bit] NOT NULL,
	[MaxDurability] [int] NOT NULL,
	[Worth] [int] NOT NULL,
	[EquipmentSlot] [int] NOT NULL,
	[NpcKey] [varchar](20) NULL,
	[Class] [varchar](12) NOT NULL,
	[LevelRequired] [int] NOT NULL,
	[DmgMin] [int] NOT NULL,
	[DmgMax] [int] NOT NULL,
	[DropRate] [decimal](3, 2) NOT NULL,
	[StageRequired] [varchar](12) NOT NULL,
	[HasPants] [bit] NOT NULL,
	[Color] [varchar](15) NOT NULL,
	[WeaponScript] [varchar](20) NULL,
	[Name] [varchar](30) NOT NULL,
	[GroupIn] [varchar](15) NULL,
	[HP] [int] NOT NULL,
	[MP] [int] NOT NULL,
	[ArmorClass] [int] NOT NULL,
	[Strength] [int] NOT NULL,
	[Intelligence] [int] NOT NULL,
	[Wisdom] [int] NOT NULL,
	[Constitution] [int] NOT NULL,
	[Dexterity] [int] NOT NULL,
	[MagicResistance] [int] NOT NULL,
	[Hit] [int] NOT NULL,
	[Dmg] [int] NOT NULL,
	[Regen] [int] NOT NULL,
	[SpellLinesModifier] [int] NOT NULL,
	[IsPositiveSpellLines] [int] NOT NULL,
	[SpellMinValue] [int] NOT NULL,
	[SpellMaxValue] [int] NOT NULL,
 CONSTRAINT [PK__WeaponAs__541D0AF13A8D8382] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponAssassin] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 6, 0, 32859, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 3, 1, 2000, 1000, 1, N'', N'Assassin', 1, 12, 20, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Snow Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 28, 0, 35036, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 3, 1, 1000, 1500, 1, N'', N'Assassin', 1, 10, 15, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Snow Secret', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 28, 0, 35036, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 3000, 4000, 1, N'', N'Assassin', 7, 20, 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Center Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (4, 28, 0, 35036, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 7, 1, 4000, 10000, 1, N'', N'Assassin', 21, 80, 160, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Blossom Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (5, 28, 0, 32990, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 9, 1, 6000, 15000, 1, N'', N'Assassin', 39, 230, 255, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Moon Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 5, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (6, 28, 0, 32990, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 11, 1, 7000, 23000, 1, N'', N'Assassin', 52, 340, 370, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Luminous Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (7, 28, 0, 32990, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 13, 1, 9000, 30000, 1, N'', N'Assassin', 71, 430, 452, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Sun Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (8, 28, 0, 32991, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 15, 1, 10000, 50000, 1, N'', N'Assassin', 88, 575, 650, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Lotus Secret', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (9, 28, 0, 32991, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 13, 1, 13000, 68000, 1, N'', N'Assassin', 94, 777, 777, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Ninja Star', N'Balanced Shuriken', N'Shuriken', 0, 0, 0, 0, 0, 0, 0, 2, 0, 13, 13, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (10, 6, 0, 33020, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 3, 1, 3000, 2500, 1, N'', N'Assassin', 9, 15, 37, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Centered Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (11, 6, 0, 33019, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 3, 1, 4000, 3000, 1, N'', N'Assassin', 14, 65, 125, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Blessed Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (12, 31, 0, 33023, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 4, 1, 5000, 7000, 1, N'', N'Assassin', 25, 90, 175, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Moon Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (13, 30, 0, 33022, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 4, 1, 7000, 14000, 1, N'', N'Assassin', 44, 300, 350, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Luminous Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (14, 31, 0, 33021, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 8000, 17000, 1, N'', N'Assassin', 57, 360, 400, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sun Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (15, 33, 0, 33025, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 7, 1, 10000, 25000, 1, N'', N'Assassin', 71, 440, 450, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lotus Dagger', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (16, 46, 0, 33286, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 7, 1, 15000, 30000, 1, N'', N'Assassin', 90, 640, 700, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Skiv', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (17, 32, 0, 33024, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 8, 1, 17000, 35000, 1, N'', N'Assassin', 98, 800, 920, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Blood Skiv', N'Daggers', 0, 0, 0, 0, 0, 0, 0, 2, 0, 11, 9, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (18, 85, 0, 33865, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 10, 1, 22000, 60000, 1, N'', N'Assassin', 110, 1020, 1300, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Nagetier Dagger', N'Daggers', 400, 300, 0, 0, 0, 0, 0, 5, 0, 15, 12, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (19, 102, 0, 33781, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 11, 1, 50000, 180000, 1, N'', N'Assassin', 125, 1540, 1850, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Desert Skiv', N'Daggers', 500, 400, 0, 0, 0, 0, 0, 5, 0, 15, 15, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponAssassin] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (20, 103, 0, 33780, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 11, 1, 70000, 200000, 1, N'', N'Assassin', 140, 1735, 2000, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Razor Skiv', N'Daggers', 800, 400, 0, 0, 0, 0, 0, 4, 0, 12, 20, 0, 0, 0, 1, 9)
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Image__6F7569AA]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Displ__70698DE3]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Flags__715DB21C]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Carry__7251D655]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Encha__7345FA8E]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Worth__743A1EC7]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Class__752E4300]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Level__76226739]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__DropR__77168B72]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Stage__780AAFAB]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Color__78FED3E4]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAssass__HP__79F2F81D]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAssass__MP__7AE71C56]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Armor__7BDB408F]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Stren__7CCF64C8]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Intel__7DC38901]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Wisdo__7EB7AD3A]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Const__7FABD173]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Dexte__009FF5AC]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Magic__019419E5]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAssas__Hit__02883E1E]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAssas__Dmg__037C6257]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Regen__04708690]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Spell__0564AAC9]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__IsPos__0658CF02]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Spell__074CF33B]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponAssassin] ADD  CONSTRAINT [DF__WeaponAss__Spell__08411774]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
