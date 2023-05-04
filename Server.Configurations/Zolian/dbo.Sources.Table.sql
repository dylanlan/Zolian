USE [Zolian]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__SpellMa__40106F4B]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__SpellMi__3F1C4B12]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__SpellSt__3E2826D9]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__SpellSc__3D3402A0]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Regen__3C3FDE67]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Dmg__3B4BBA2E]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Hit__3A5795F5]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__MagicRe__396371BC]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Dexteri__386F4D83]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Constit__377B294A]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Wisdom__36870511]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Intelli__3592E0D8]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Strengt__349EBC9F]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__ArmorCl__33AA9866]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__MP__32B6742D]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__HP__31C24FF4]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Color__30CE2BBB]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__StageRe__2FDA0782]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__DropRat__2EE5E349]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__LevelRe__2DF1BF10]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Class__2CFD9AD7]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Worth__2C09769E]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Enchant__2B155265]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__CarryWe__2A212E2C]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Flags__292D09F3]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Display__2838E5BA]
GO
ALTER TABLE [dbo].[Sources] DROP CONSTRAINT [DF__Sources__Image__2744C181]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sources]') AND type in (N'U'))
DROP TABLE [dbo].[Sources]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sources](
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
	[NpcKey] [varchar](30) NULL,
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
 CONSTRAINT [PK__Sources__541D0AF1F25A1683] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sources] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 688, 0, 33456, N'Shield', N'NormalEquipElement', N'Both', N'Fire', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Flame Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 696, 0, 33464, N'Shield', N'NormalEquipElement', N'Both', N'Earth', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gravel Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 697, 0, 33465, N'Shield', N'NormalEquipElement', N'Both', N'Wind', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gust Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (4, 698, 0, 33466, N'Shield', N'NormalEquipElement', N'Both', N'Holy', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (5, 672, 0, 33440, N'Shield', N'NormalEquipElement', N'Both', N'Fire', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Flame Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (6, 680, 0, 33448, N'Shield', N'NormalEquipElement', N'Both', N'Earth', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Gravel Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (7, 681, 0, 33449, N'Shield', N'NormalEquipElement', N'Both', N'Wind', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Gust Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (8, 682, 0, 33450, N'Shield', N'NormalEquipElement', N'Both', N'Holy', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Holy Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (9, 677, 0, 33445, N'Shield', N'NormalEquipElement', N'Both', N'Water', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Sea Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (10, 683, 0, 33451, N'Shield', N'NormalEquipElement', N'Both', N'Void', N'None', 1, 1, 100000, 150000, 3, N'', N'Arcanus', 65, 30, 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Void Crystal', N'', 0, 1000, 7, 0, 4, 4, 0, 0, 0, 0, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (11, 652, 0, 33420, N'Shield', N'NormalEquipElement', N'Both', N'Fire', N'None', 1, 1, 50000, 15000, 3, N'', N'Arcanus', 11, 10, 15, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lessor Flame Crystal', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (12, 654, 0, 33422, N'Shield', N'NormalEquipElement', N'Both', N'Earth', N'None', 1, 1, 50000, 15000, 3, N'', N'Arcanus', 11, 10, 15, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lessor Gravel Crystal', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (13, 653, 0, 33421, N'Shield', N'NormalEquipElement', N'Both', N'Wind', N'None', 1, 1, 50000, 15000, 3, N'', N'Arcanus', 11, 10, 15, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lessor Gust Crystal', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (14, 655, 0, 33423, N'Shield', N'NormalEquipElement', N'Both', N'Water', N'None', 1, 1, 50000, 15000, 3, N'', N'Arcanus', 11, 10, 15, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lessor Sea Crystal', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (15, 656, 0, 33424, N'Shield', N'NormalEquipElement', N'Both', N'Fire', N'None', 1, 1, 50000, 30000, 3, N'', N'Arcanus', 25, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Minor Flame Crystal', N'', 0, 250, 3, 0, 1, 1, 0, 0, 0, 0, 4, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (16, 658, 0, 33426, N'Shield', N'NormalEquipElement', N'Both', N'Earth', N'None', 1, 1, 50000, 30000, 3, N'', N'Arcanus', 25, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Minor Gravel Crystal', N'', 0, 250, 3, 0, 1, 1, 0, 0, 0, 0, 4, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (17, 657, 0, 33425, N'Shield', N'NormalEquipElement', N'Both', N'Wind', N'None', 1, 1, 50000, 30000, 3, N'', N'Arcanus', 25, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Minor Gust Crystal', N'', 0, 250, 3, 0, 1, 1, 0, 0, 0, 0, 4, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (18, 659, 0, 33427, N'Shield', N'NormalEquipElement', N'Both', N'Water', N'None', 1, 1, 50000, 30000, 3, N'', N'Arcanus', 25, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Minor Sea Crystal', N'', 0, 250, 3, 0, 1, 1, 0, 0, 0, 0, 4, 0, 1, 1, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (19, 693, 0, 33461, N'Shield', N'NormalEquipElement', N'Both', N'Water', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sea Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
INSERT [dbo].[Sources] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (20, 699, 0, 33467, N'Shield', N'NormalEquipElement', N'Both', N'Void', N'None', 1, 1, 100000, 90000, 3, N'', N'Arcanus', 40, 20, 35, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Crystal', N'', 0, 500, 5, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 1, 9)
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Image__2744C181]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Display__2838E5BA]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Flags__292D09F3]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__CarryWe__2A212E2C]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Enchant__2B155265]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Worth__2C09769E]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Class__2CFD9AD7]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__LevelRe__2DF1BF10]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__DropRat__2EE5E349]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__StageRe__2FDA0782]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Color__30CE2BBB]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__HP__31C24FF4]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__MP__32B6742D]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__ArmorCl__33AA9866]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Strengt__349EBC9F]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Intelli__3592E0D8]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Wisdom__36870511]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Constit__377B294A]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Dexteri__386F4D83]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__MagicRe__396371BC]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Hit__3A5795F5]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Dmg__3B4BBA2E]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__Regen__3C3FDE67]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__SpellSc__3D3402A0]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__SpellSt__3E2826D9]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__SpellMi__3F1C4B12]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF__Sources__SpellMa__40106F4B]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
