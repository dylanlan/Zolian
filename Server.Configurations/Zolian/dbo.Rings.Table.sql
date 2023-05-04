USE [Zolian]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Regen__2097C3F2]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Dmg__1FA39FB9]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Hit__1EAF7B80]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__MagicResi__1DBB5747]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Dexterity__1CC7330E]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Constitut__1BD30ED5]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Wisdom__1ADEEA9C]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Intellige__19EAC663]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Strength__18F6A22A]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__ArmorClas__18027DF1]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__MP__170E59B8]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__HP__161A357F]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Color__15261146]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__StageRequ__1431ED0D]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__DropRate__133DC8D4]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__LevelRequ__1249A49B]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Class__11558062]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Worth__10615C29]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Enchantab__0F6D37F0]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__CarryWeig__0E7913B7]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Flags__0D84EF7E]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__DisplayIm__0C90CB45]
GO
ALTER TABLE [dbo].[Rings] DROP CONSTRAINT [DF__Rings__Image__0B9CA70C]
GO
/****** Object:  Table [dbo].[Rings]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rings]') AND type in (N'U'))
DROP TABLE [dbo].[Rings]
GO
/****** Object:  Table [dbo].[Rings]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rings](
	[EquipmentId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](40) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[OffenseElement] [varchar](15) NOT NULL,
	[DefenseElement] [varchar](15) NOT NULL,
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
	[EquipmentScript] [varchar](20) NULL,
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
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rings] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 209, 32977, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 18000, 8, N'Peasant', 12, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Amethyst Band', N'Rings', 0, 600, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 670, 33438, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 6000, 250000, 8, N'Peasant', 95, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Black Pearl Ring', N'Rings', 2000, 2000, 5, 4, 4, 4, 4, 4, 10, 15, 15, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 208, 32976, N'Generic', N'NormalEquipPerishBound', N'Both', N'None', N'None', 1, 1, 4000, 50000, 8, N'Peasant', 12, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dark Jade Ring', N'Rings', 1200, 0, 0, 1, 0, 0, 1, 0, 0, 0, 3, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 213, 32981, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 4000, 15000, 8, N'Peasant', 8, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emerald Ring', N'Rings', 750, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 1101, 33869, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 300000, 8, N'Peasant', 50, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Eternal Coral Ring', N'Rings', 1000, 0, 3, 3, 3, 3, 3, 3, 10, 5, 5, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 2077, 34845, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 4000, 60000, 8, N'Peasant', 61, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Garnet Ring', N'Rings', 1500, 0, 2, 4, 0, 0, 4, 0, 10, 5, 5, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 2075, 34843, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 75000, 8, N'Peasant', 71, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Ribbon Band', N'Rings', 0, 1800, 3, 0, 5, 5, 0, 2, 10, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1575, 34343, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 3000, 48000, 8, N'Peasant', 35, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Tri-Band', N'Rings', 0, 1600, 2, 0, 3, 3, 2, 0, 10, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 214, 32982, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 18000, 8, N'Peasant', 12, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Jade Ring', N'Rings', 0, 1200, 0, 0, 1, 1, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 207, 32975, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 0, 3000, 1000000, 8, N'Peasant', 30, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'King Signet', N'Rings', 500, 500, 2, 2, 2, 2, 2, 2, 10, 5, 5, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 906, 33674, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 125000, 8, N'Peasant', 81, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Emerald Ring', N'Rings', 2000, 0, 4, 4, 2, 2, 4, 4, 10, 10, 10, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 13593, 46361, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 125000, 8, N'Peasant', 81, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Large Ruby Ring', N'Rings', 0, 2000, 4, 2, 4, 4, 2, 2, 10, 15, 5, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1572, 34340, N'Generic', N'NormalEquipmentBound', N'Both', N'None', N'None', 1, 0, 5000, 0, 8, N'Peasant', 75, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lich Ring', N'Rings', -6000, 3000, 10, 15, 15, 15, 15, 15, 40, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 2076, 34844, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 75000, 8, N'Peasant', 71, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Memory Dulling Ring', N'Rings', 1800, 0, 3, 5, 0, 0, 5, 2, 10, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 215, 32983, N'Generic', N'NormalEquipmentBound', N'Both', N'None', N'None', 1, 0, 2500, 0, 8, N'Peasant', 30, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Necro Ring', N'Rings', -3500, 1500, 0, 5, 5, 5, 5, 5, 20, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 10192, 42960, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 10000, 500000, 8, N'Peasant', 99, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Red Plamit Ring', N'Rings', 2000, -2000, 6, 7, 2, 2, 7, 7, 10, 15, 20, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 206, 32974, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 2000, 3000, 8, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ribbon Band', N'Rings', 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 1826, 34594, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 25000, 8, N'Peasant', 18, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Royal Gold Ring', N'Rings', 600, 0, 2, 2, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 1827, 34595, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 8000, 8, N'Peasant', 6, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Royal Silver Ring', N'Rings', 100, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 210, 32978, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 8000, 8, N'Peasant', 6, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ruby Ring', N'Rings', 300, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 1838, 34606, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 28000, 8, N'Peasant', 21, CAST(0.25 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sapphire Ring', N'Rings', 1000, 0, 1, 2, 3, 2, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 2078, 34846, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 4000, 60000, 8, N'Peasant', 61, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sigma Band', N'Rings', 0, 1500, 2, 0, 4, 4, 0, 0, 10, 10, 5, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 1358, 34126, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 4000, 50000, 8, N'Peasant', 18, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Silver Tri-Band', N'Rings', 0, 800, 1, 0, 2, 2, 2, 0, 10, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 211, 32979, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 2000, 3000, 8, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Talos Ring', N'Rings', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Rings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 212, 32980, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 4000, 15000, 8, N'Peasant', 8, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Trinity Band', N'Rings', 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Rings] ADD  DEFAULT ((0)) FOR [Regen]
GO
