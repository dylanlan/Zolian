USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Spell__3548C815]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Spell__3454A3DC]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__IsPos__33607FA3]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Spell__326C5B6A]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Regen__31783731]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPeasa__Dmg__308412F8]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPeasa__Hit__2F8FEEBF]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Magic__2E9BCA86]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Dexte__2DA7A64D]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Const__2CB38214]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Wisdo__2BBF5DDB]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Intel__2ACB39A2]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Stren__29D71569]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Armor__28E2F130]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPeasan__MP__27EECCF7]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPeasan__HP__26FAA8BE]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Color__26068485]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Stage__2512604C]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__DropR__241E3C13]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Level__232A17DA]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Class__2235F3A1]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Worth__2141CF68]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Encha__204DAB2F]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Carry__1F5986F6]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Flags__1E6562BD]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Displ__1D713E84]
GO
ALTER TABLE [dbo].[WeaponPeasant] DROP CONSTRAINT [DF__WeaponPea__Image__1C7D1A4B]
GO
/****** Object:  Table [dbo].[WeaponPeasant]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponPeasant]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponPeasant]
GO
/****** Object:  Table [dbo].[WeaponPeasant]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponPeasant](
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
 CONSTRAINT [PK__WeaponPe__541D0AF176FD614D] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponPeasant] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 178, 0, 46448, N'Weapon', N'NormalEquipment', N'Both', N'None', N'None', 1, 0, 1300, 50000, 1, N'', N'Peasant', 3, 1, 5, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Red Birch Stick', N'Sticks', 50, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 12, 60, 32939, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 10, 1, 10000, 2800, 1, N'', N'Peasant', 24, 90, 130, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Battle Sword', N'Swords', 0, -1500, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 13, 0, 32940, N'Weapon', N'NonPerishableUpgradeNoBankWeapon', N'Both', N'None', N'None', 18, 1, 16000, 4500, 1, N'', N'Peasant', 43, 245, 260, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Black Death', N'Swords', 0, -1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (4, 14, 61, 32941, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 12, 1, 15000, 4100, 1, N'', N'Peasant', 40, 255, 268, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Bramble', N'Swords', 0, -3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (5, 5, 56, 32858, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 9, 1, 8000, 2400, 1, N'', N'Peasant', 17, 40, 55, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Broad Sword', N'Swords', 0, -750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (6, 4, 55, 32857, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 8, 1, 7000, 1300, 1, N'', N'Peasant', 14, 35, 50, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Claidheamh', N'Swords', 0, -500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (7, 67, 0, 44986, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 100, 1, 2000000, 1000000, 1, N'', N'Peasant', 500, 10000, 12000, CAST(0.00 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Death Scythe', N'GM', 200000, 200000, 50, 50, 50, 50, 50, 50, 50, 50, 50, 0, 9, 2, 0, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (8, 6, 57, 32859, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 4, 1, 3000, 500, 1, N'', N'Peasant', 1, 13, 22, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dirk', N'Daggers', 0, -50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (9, 100, 100, 33692, N'Weapon', N'DualNonPerishableUpgradeNoBankWeapon', N'Both', N'None', N'None', 10, 1, 150000, 15000, 1, N'', N'Peasant', 20, 120, 150, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dragon Scale Sword', N'Swords', 0, -500, 1, 0, 0, 0, 0, 0, 10, 2, 0, 0, 1, 2, 0, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (10, 19, 65, 32946, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 40, 1, 140000, 500000, 1, N'', N'Peasant', 170, 2500, 2800, CAST(0.01 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Dragon Slayer', N'Swords', 1250, 500, 5, 2, 0, 0, 2, -2, 5, 15, 25, 10, 2, 2, 0, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (11, 2, 51, 32855, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 4000, 600, 1, N'', N'Peasant', 1, 13, 17, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Eppe', N'Training', 0, -100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (12, 54, 54, 33295, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 3000, 0, 1, N'', N'Peasant', 10, 25, 28, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hatchet', N'Axes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (13, 15, 0, 32942, N'Weapon', N'PerishableUpgradeWeapon', N'Both', N'None', N'None', 18, 1, 20000, 45000, 1, N'', N'Peasant', 56, 365, 385, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Long Sword', N'Swords', 0, -3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (14, 3, 52, 32856, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 7, 1, 6000, 1200, 1, N'', N'Peasant', 7, 18, 28, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Loures Saber', N'Training', 1, -250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (15, 11, 59, 32938, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 15, 1, 12000, 3500, 1, N'', N'Peasant', 33, 150, 180, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Masquerade', N'Swords', 0, -500, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (16, 180, 180, 46450, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 2, 1, 1500, 300, 1, N'', N'Peasant', 3, 7, 15, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Oak Stick', N'Sticks', 0, 50, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (17, 83, 83, 33863, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 10, 1, 10000, 0, 1, N'', N'Peasant', 45, 50, 500, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Primitive Spear', N'Spears', 0, -1500, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (18, 231, 0, 35029, N'Weapon', N'NormalEquipment', N'Both', N'None', N'None', 1, 0, 300, 2000, 1, N'', N'Peasant', 6, 15, 20, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'Apple', N'Rotten Apple', N'Fruits', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (19, 82, 0, 33957, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 23, 1, 350000, 750000, 1, N'', N'Peasant', 130, 1000, 2100, CAST(0.01 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Scythe', N'Polearms', 0, 0, 0, 0, 1, 1, 0, 0, 20, 10, 25, 15, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (20, 35, 67, 33275, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 12, 1, 25000, 0, 1, N'', N'Peasant', 66, 200, 600, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Spiked Club', N'Clubs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 2, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (21, 1, 50, 32854, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 1, 1, 1200, 100, 1, N'', N'Peasant', 1, 4, 12, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stick', N'Sticks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (22, 17, 63, 32944, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 25, 1, 22000, 41000, 1, N'', N'Peasant', 61, 380, 400, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stilla', N'Swords', 0, -3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (23, 42, 68, 33282, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 11, 1, 10000, 0, 1, N'', N'Peasant', 97, 150, 1500, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stone Axe', N'Axes', 100, 100, 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, 2, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (24, 179, 179, 46449, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 3, 1, 5000, 20000, 1, N'', N'Peasant', 4, 9, 15, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Shadow Eppe', N'Training', 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (25, 53, 53, 33293, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 29, 1, 80000, 60000, 1, N'', N'Peasant', 70, 425, 550, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Talgonite Axe', N'Axes', 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (26, 10, 58, 32937, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 12, 1, 11000, 3200, 1, N'', N'Peasant', 29, 140, 177, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Templar', N'Swords', 0, -1000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (27, 34, 66, 33274, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 11, 1, 10000, 0, 1, N'', N'Peasant', 50, 150, 400, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wooden Club', N'Clubs', 0, -750, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 2, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (28, 134, 0, 34543, N'Weapon', N'PerishableUpgradeWeaponLongRange', N'Both', N'None', N'None', 3, 1, 25000, 75000, 1, N'', N'Peasant', 35, 200, 250, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wooden Bow', N'Bows', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (29, 16, 62, 32943, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 45, 1, 46500, 43600, 1, N'', N'Peasant', 70, 415, 445, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Claidhmore', N'Swords', 0, 0, 1, 0, 0, 2, 0, 0, 0, 5, 0, 0, 1, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (30, 18, 64, 32945, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 50, 1, 66000, 56750, 1, N'', N'Peasant', 77, 445, 478, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emerald', N'Swords', 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (31, 96, 0, 33693, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Peasant', 110, 1337, 1800, CAST(0.01 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Carnun''s Battle Axe', N'Axes', 1500, 1000, 8, 3, -1, -1, 5, -5, 10, 15, 20, 10, 3, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (32, 192, 0, 36075, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 59, 1, 100000, 0, 1, N'', N'Peasant', 94, 500, 800, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Metal Club', N'Clubs', 0, -5000, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 3, 1, 2, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (33, 204, 0, 42885, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Peasant', 400, 3850, 4250, CAST(0.20 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Death Knell', N'Knight', 2000, 1000, 10, 5, -5, -5, 5, 5, 0, 25, 20, 0, 3, 1, 3, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (34, 207, 0, 42887, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Peasant', 450, 3900, 4100, CAST(0.20 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Excalibur', N'Knight', 1000, 2000, 10, 5, 5, 5, 5, 5, 20, 25, 20, 0, 3, 2, 0, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (35, 241, 241, 33959, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 10, 1, 180000, 180000, 1, N'', N'Peasant', 150, 2200, 2800, CAST(0.05 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Splish', N'Fish', 200, 800, 1, 1, 3, 3, 1, 1, 10, 10, 10, 10, 0, 0, 1, 9)
INSERT [dbo].[WeaponPeasant] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (36, 244, 244, 33958, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 10, 1, 180000, 180000, 1, N'', N'Peasant', 150, 2200, 2800, CAST(0.05 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Splash', N'Fish', 800, 200, 3, 3, 1, 1, 3, 3, 10, 10, 10, 5, 0, 0, 1, 9)
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Image__1C7D1A4B]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Displ__1D713E84]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Flags__1E6562BD]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Carry__1F5986F6]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Encha__204DAB2F]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Worth__2141CF68]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Class__2235F3A1]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Level__232A17DA]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__DropR__241E3C13]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Stage__2512604C]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Color__26068485]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPeasan__HP__26FAA8BE]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPeasan__MP__27EECCF7]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Armor__28E2F130]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Stren__29D71569]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Intel__2ACB39A2]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Wisdo__2BBF5DDB]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Const__2CB38214]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Dexte__2DA7A64D]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Magic__2E9BCA86]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPeasa__Hit__2F8FEEBF]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPeasa__Dmg__308412F8]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Regen__31783731]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Spell__326C5B6A]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__IsPos__33607FA3]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Spell__3454A3DC]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponPeasant] ADD  CONSTRAINT [DF__WeaponPea__Spell__3548C815]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
