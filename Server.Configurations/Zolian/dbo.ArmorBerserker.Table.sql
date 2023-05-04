USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Regen__13E7D44A]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerzer__Dmg__12F3B011]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerzer__Hit__11FF8BD8]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Magic__110B679F]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Dexte__10174366]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Const__0F231F2D]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Wisdo__0E2EFAF4]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Intel__0D3AD6BB]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Stren__0C46B282]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Armor__0B528E49]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerzerk__MP__0A5E6A10]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerzerk__HP__096A45D7]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Color__0876219E]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Stage__0781FD65]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__DropR__068DD92C]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Level__0599B4F3]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Class__04A590BA]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Worth__03B16C81]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Encha__02BD4848]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Carry__01C9240F]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Flags__00D4FFD6]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Displ__7FE0DB9D]
GO
ALTER TABLE [dbo].[ArmorBerserker] DROP CONSTRAINT [DF__ArmorBerz__Image__7EECB764]
GO
/****** Object:  Table [dbo].[ArmorBerserker]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorBerserker]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorBerserker]
GO
/****** Object:  Table [dbo].[ArmorBerserker]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorBerserker](
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
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 2, 32884, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 950, 2, N'Berserker', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leather Bliaut', N'', 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 2, 32865, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 950, 2, N'Berserker', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Leather Tunic', N'', 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 44, 33200, N'Armor', N'NormalEquipment', N'Female', 9, 0, 6000, 9450, 2, N'Berserker', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Knitted Cuirass', N'', 0, 0, 17, 0, 0, -1, -2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 43, 33139, N'Armor', N'NormalEquipment', N'Male', 9, 0, 6000, 9450, 2, N'Berserker', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Knitted Jupe', N'', 0, 0, 17, 0, 0, -1, -2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 84, 33204, N'Armor', N'NormalEquipment', N'Female', 13, 0, 9000, 17950, 2, N'Berserker', 23, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Etched Cotehardie', N'', 0, 0, 25, 0, 0, -1, -5, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 83, 33143, N'Armor', N'NormalEquipment', N'Male', 13, 0, 9000, 17950, 2, N'Berserker', 23, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Etched Lorem', N'', 0, 0, 25, 0, 0, -1, -5, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 17, 32915, N'Armor', N'NormalEquipment', N'Male', 20, 0, 12000, 26450, 2, N'Berserker', 38, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kasmanium Half Plate', N'', 0, 0, 43, 0, 0, -1, -2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 248, 34415, N'Armor', N'NormalEquipment', N'Female', 20, 0, 12000, 26450, 2, N'Berserker', 38, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kasmanium Half Hauberk', N'', 0, 0, 43, 0, 0, -1, -2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 22, 32930, N'Armor', N'NormalEquipment', N'Female', 27, 0, 15000, 34950, 2, N'Berserker', 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Chain-Woven Bliaut', N'', 0, 0, 55, 1, 0, -1, -5, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 22, 32920, N'Armor', N'NormalEquipment', N'Male', 27, 0, 15000, 34950, 2, N'Berserker', 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Polished Chainmail', N'', 0, 0, 55, 1, 0, -1, -5, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 204, 33870, N'Armor', N'NormalEquipment', N'Male', 30, 0, 18000, 44000, 2, N'Berserker', 65, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Scarlet Half Plate', N'', 0, 0, 60, 2, 0, -4, -3, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 204, 33871, N'Armor', N'NormalEquipment', N'Female', 30, 0, 18000, 44000, 2, N'Berserker', 65, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Scarlet Half Hauberk', N'', 0, 0, 60, 2, 0, -4, -3, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 36, 33068, N'Armor', N'NormalEquipment', N'Both', 35, 0, 22500, 150000, 2, N'Berserker', 80, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Carnun Half Plate', N'', 0, 0, 66, 3, 0, -8, -4, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 123, 32891, N'Armor', N'NormalEquipment', N'Male', 38, 0, 25000, 94000, 2, N'Berserker', 94, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Crimson Half Plate', N'', 0, 0, 77, 4, 0, -10, -2, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 126, 33578, N'Armor', N'NormalEquipment', N'Female', 38, 0, 25000, 94000, 2, N'Berserker', 94, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Half Plate', N'', 0, 0, 77, 4, 0, -10, -2, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 250, 34392, N'Armor', N'NormalEquipment', N'Male', 45, 0, 28000, 115000, 2, N'Berserker', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril Half Plate', N'', 0, 0, 84, 2, 0, -6, -1, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 250, 34417, N'Armor', N'NormalEquipment', N'Female', 45, 0, 28000, 115000, 2, N'Berserker', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril Half Hauberk', N'', 0, 0, 84, 2, 0, -6, -1, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 29, 32785, N'Armor', N'NormalEquipment', N'Male', 52, 0, 33000, 200000, 2, N'Berserker', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hybrasyl Half Plate', N'', 0, 0, 90, 1, 0, -5, -1, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 29, 32783, N'Armor', N'NormalEquipment', N'Female', 52, 0, 33000, 200000, 2, N'Berserker', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hybrasyl Half Hauberk', N'', 0, 0, 90, 1, 0, -5, -1, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 157, 33631, N'Armor', N'NormalEquipment', N'Male', 30, 0, 45000, 520000, 2, N'Berserker', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Bushi Half Plate', N'', 1000, 500, 99, 5, 0, -2, 5, 3, 40, 15, 10, 20)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 157, 33636, N'Armor', N'NormalEquipment', N'Female', 30, 0, 45000, 520000, 2, N'Berserker', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Rongyee Half Plate', N'', 1000, 500, 99, 5, 0, -2, 5, 3, 40, 15, 10, 20)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 180, 33754, N'Armor', N'NormalEquipment', N'Male', 32, 0, 52000, 1000000, 2, N'Berserker', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Hanarr''s Violent Plate', N'', 4000, 750, 105, 5, 0, 0, 5, 5, 40, 20, 13, 30)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 180, 33744, N'Armor', N'NormalEquipment', N'Female', 32, 0, 52000, 1000000, 2, N'Berserker', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Hanarr''s Half Plate', N'', 4000, 750, 105, 5, 0, 0, 5, 5, 40, 20, 13, 30)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 114, 33069, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 25000, 100000, 4, N'Peasant', 80, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Carnun Helm', N'', 0, 0, 1, 3, 0, 0, 2, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 153, 33528, N'Helmet', N'NormalEquipment', N'Male', 3, 0, 22000, 75000, 4, N'Berserker', 94, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Crimson Helm', N'', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 234, 34521, N'Helmet', N'NormalEquipment', N'Female', 3, 0, 22000, 75000, 4, N'Berserker', 94, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Setting Helm', N'', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 234, 34523, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 24000, 82000, 4, N'Berserker', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril Helm', N'', 0, 0, 2, 2, 0, 0, 1, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 233, 34522, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 24000, 82000, 4, N'Berserker', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Chained Mythril Helm', N'', 0, 0, 2, 2, 0, 0, 1, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 113, 32786, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 28000, 90000, 4, N'Berserker', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hybrasyl Helm', N'', 0, 0, 3, 3, 0, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 113, 32784, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 28000, 90000, 4, N'Berserker', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Chained Hybrasyl Helm', N'', 0, 0, 3, 3, 0, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (32, 178, 33808, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 45000, 500000, 4, N'Berserker', 135, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Bushi War Helm', N'', 750, 0, 3, 5, 0, 0, 5, 3, 10, 20, 15, 25)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (33, 178, 33809, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 45000, 500000, 4, N'Berserker', 135, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Rongyee War Crown', N'', 750, 0, 3, 5, 0, 0, 5, 3, 10, 20, 15, 25)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (34, 168, 33774, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 55000, 800000, 4, N'Berserker', 150, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hanarr''s War Helm', N'', 750, 750, 4, 5, 0, 0, 5, 5, 20, 25, 20, 25)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (35, 168, 33764, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 55000, 800000, 4, N'Berserker', 150, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hanarr''s Chained Helm', N'', 750, 750, 4, 5, 0, 0, 5, 5, 20, 25, 20, 25)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (49, 348, 43049, N'Armor', N'NormalEquipment', N'Both', 40, 0, 25000, 225000, 2, N'Berserker', 250, CAST(1.00 AS Decimal(3, 2)), N'Master', 1, N'Lavender', N'', N'Silver Dragon Armor', N'Dragon', 0, 0, 125, 0, 0, 0, 0, 0, 40, 35, 30, 60)
INSERT [dbo].[ArmorBerserker] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (50, 132, 43051, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 18000, 180000, 4, N'Berserker', 250, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Silver Dragon Helm', N'Dragon', 0, 0, 15, 0, 0, 0, 0, 0, 40, 35, 30, 60)
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorBerserker] ADD  DEFAULT ((0)) FOR [Regen]
GO
