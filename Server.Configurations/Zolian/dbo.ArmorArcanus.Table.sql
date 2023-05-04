USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Regen__4A6E022D]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArcanu__Dmg__4979DDF4]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArcanu__Hit__4885B9BB]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Magic__47919582]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Dexte__469D7149]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Const__45A94D10]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Wisdo__44B528D7]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Intel__43C1049E]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Stren__42CCE065]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Armor__41D8BC2C]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArcanus__MP__40E497F3]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArcanus__HP__3FF073BA]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Color__3EFC4F81]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Stage__3E082B48]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__DropR__3D14070F]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Level__3C1FE2D6]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Class__3B2BBE9D]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Worth__3A379A64]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Encha__3943762B]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Carry__384F51F2]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Flags__375B2DB9]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Displ__36670980]
GO
ALTER TABLE [dbo].[ArmorArcanus] DROP CONSTRAINT [DF__ArmorArca__Image__3572E547]
GO
/****** Object:  Table [dbo].[ArmorArcanus]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorArcanus]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorArcanus]
GO
/****** Object:  Table [dbo].[ArmorArcanus]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorArcanus](
	[ArmorId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](40) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[CarryWeight] [int] NOT NULL,
	[Enchantable] [bit] NOT NULL,
	[MaxDurability] [int] NOT NULL,
	[Worth] [int] NOT NULL,
	[EquipmentSlot] [int] NOT NULL,
	[Class] [varchar](12) NOT NULL,
	[LevelRequired] [int] NOT NULL,
	[DropRate] [decimal](3, 2) NOT NULL,
	[StageRequired] [varchar](12) NOT NULL,
	[HasPants] [bit] NOT NULL,
	[Color] [varchar](15) NOT NULL,
	[ArmorScript] [varchar](20) NULL,
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
PRIMARY KEY CLUSTERED 
(
	[ArmorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArmorArcanus] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 6, 32869, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 750, 2, N'Arcanus', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Gardcorp', N'', 0, 0, 5, -2, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 6, 32888, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 750, 2, N'Arcanus', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Magi Skirt', N'', 0, 0, 5, -2, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 52, 33176, N'Armor', N'NormalEquipment', N'Male', 6, 0, 6000, 7200, 2, N'Arcanus', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Journey Robes', N'', 0, 0, 15, -3, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 53, 33237, N'Armor', N'NormalEquipment', N'Female', 6, 0, 6000, 7200, 2, N'Arcanus', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Benusta', N'', 0, 0, 15, -3, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 11, 32874, N'Armor', N'NormalEquipment', N'Male', 11, 0, 9000, 15250, 2, N'Arcanus', 19, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Advanced Robes', N'', 0, 0, 20, -4, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 54, 33238, N'Armor', N'NormalEquipment', N'Female', 11, 0, 9000, 15250, 2, N'Arcanus', 19, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Enhanced Benusta', N'', 0, 0, 20, -4, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 208, 33876, N'Armor', N'NormalEquipment', N'Male', 15, 0, 10000, 37000, 2, N'Arcanus', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Azog Cowl', N'', 0, 0, 25, -2, 0, 2, 2, 0, 0, 0, 0, 20)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 208, 33877, N'Armor', N'NormalEquipment', N'Female', 15, 0, 10000, 37000, 2, N'Arcanus', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Azog Robes', N'', 0, 0, 25, -2, 0, 2, 2, 0, 0, 0, 0, 20)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 92, 33180, N'Armor', N'NormalEquipment', N'Male', 20, 0, 12000, 70000, 2, N'Arcanus', 40, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Enchanted Mantle', N'', 0, 0, 37, -3, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 92, 33240, N'Armor', N'NormalEquipment', N'Female', 20, 0, 12000, 70000, 2, N'Arcanus', 40, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stoller', N'', 0, 0, 37, -3, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 112, 33544, N'Armor', N'NormalEquipment', N'Male', 25, 0, 15000, 120000, 2, N'Arcanus', 55, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Cthonic Robes', N'', 0, 0, 52, -1, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 113, 33589, N'Armor', N'NormalEquipment', N'Female', 25, 0, 15000, 120000, 2, N'Arcanus', 55, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Clymouth', N'', 0, 0, 52, -1, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 134, 33550, N'Armor', N'NormalEquipment', N'Male', 30, 0, 17000, 180000, 2, N'Arcanus', 75, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Duin Mantle', N'', 0, 0, 64, 0, 1, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 133, 33593, N'Armor', N'NormalEquipment', N'Female', 30, 0, 17000, 180000, 2, N'Arcanus', 75, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Clamyth', N'', 0, 0, 64, 0, 1, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 41, 33078, N'Armor', N'NormalEquipment', N'Male', 35, 0, 21750, 225000, 2, N'Arcanus', 87, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Artisan Mantle', N'', 0, 0, 70, 0, 2, 0, 0, 0, 20, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 41, 33079, N'Armor', N'NormalEquipment', N'Female', 35, 0, 21750, 225000, 2, N'Arcanus', 87, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Artisan Robes', N'', 0, 0, 70, 0, 2, 0, 0, 0, 20, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 131, 33547, N'Armor', N'NormalEquipment', N'Male', 35, 0, 28750, 480000, 2, N'Arcanus', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythic Mantle', N'', 0, 0, 77, 0, 3, 0, 0, 0, 30, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 131, 33591, N'Armor', N'NormalEquipment', N'Female', 35, 0, 28750, 480000, 2, N'Arcanus', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythic Robes', N'', 0, 0, 77, 0, 3, 0, 0, 0, 30, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 202, 33887, N'Armor', N'NormalEquipment', N'Male', 37, 0, 35250, 720000, 2, N'Arcanus', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wizard Mantle', N'', 0, 0, 84, 0, 4, 0, 0, 0, 40, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 202, 33891, N'Armor', N'NormalEquipment', N'Female', 37, 0, 35250, 720000, 2, N'Arcanus', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wizard Robes', N'', 0, 0, 84, 0, 4, 0, 0, 0, 40, 0, 0, 0)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 160, 33634, N'Armor', N'NormalEquipment', N'Male', 20, 0, 39500, 2400000, 2, N'Arcanus', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Mystra''s Padded Robe', N'', 500, 1500, 93, 0, 7, 5, 0, 0, 50, 10, 15, 25)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 160, 33639, N'Armor', N'NormalEquipment', N'Female', 20, 0, 39500, 2400000, 2, N'Arcanus', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Mystra''s Veil', N'', 500, 1500, 93, 0, 7, 5, 0, 0, 50, 10, 15, 25)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 178, 33752, N'Armor', N'NormalEquipment', N'Male', 22, 0, 47000, 5000000, 2, N'Arcanus', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Pugna Magica Garb', N'', 1000, 4000, 97, 0, 9, 5, 0, 0, 60, 15, 20, 25)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 178, 33742, N'Armor', N'NormalEquipment', N'Female', 22, 0, 47000, 5000000, 2, N'Arcanus', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Pugna Magica Robes', N'', 1000, 4000, 97, 0, 9, 5, 0, 0, 60, 15, 20, 25)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 158, 33655, N'Helmet', N'NormalEquipment', N'Male', 2, 0, 39500, 1100000, 4, N'Arcanus', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Mystra''s Hat', N'', 500, 1500, 3, 0, 2, 0, 3, 0, 20, 10, 5, 5)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 158, 33656, N'Helmet', N'NormalEquipment', N'Female', 2, 0, 39500, 1100000, 4, N'Arcanus', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Mystra''s Covering', N'', 500, 1500, 3, 0, 2, 0, 3, 0, 20, 10, 5, 5)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 166, 33772, N'Helmet', N'NormalEquipment', N'Male', 3, 0, 47000, 1500000, 4, N'Arcanus', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Pugna''s Hat', N'', 1000, 4000, 4, 0, 4, 0, 6, 0, 30, 15, 10, 5)
INSERT [dbo].[ArmorArcanus] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 166, 33762, N'Helmet', N'NormalEquipment', N'Female', 3, 0, 47000, 1500000, 4, N'Arcanus', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Pugna''s Covering', N'', 1000, 4000, 4, 0, 4, 0, 6, 0, 30, 15, 10, 5)
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorArcanus] ADD  DEFAULT ((0)) FOR [Regen]
GO
