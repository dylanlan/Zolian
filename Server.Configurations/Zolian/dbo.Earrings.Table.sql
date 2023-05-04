USE [Zolian]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Regen__0C06BB60]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Dmg__0B129727]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Hit__0A1E72EE]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__MagicR__092A4EB5]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Dexter__08362A7C]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Consti__07420643]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Wisdom__064DE20A]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Intell__0559BDD1]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Streng__04659998]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__ArmorC__0371755F]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__MP__027D5126]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__HP__01892CED]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Color__009508B4]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__StageR__7FA0E47B]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__DropRa__7EACC042]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__LevelR__7DB89C09]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Class__7CC477D0]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Worth__7BD05397]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Enchan__7ADC2F5E]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__CarryW__79E80B25]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Flags__78F3E6EC]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Displa__77FFC2B3]
GO
ALTER TABLE [dbo].[Earrings] DROP CONSTRAINT [DF__Earrings__Image__770B9E7A]
GO
/****** Object:  Table [dbo].[Earrings]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Earrings]') AND type in (N'U'))
DROP TABLE [dbo].[Earrings]
GO
/****** Object:  Table [dbo].[Earrings]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Earrings](
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
ALTER TABLE [dbo].[Earrings] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 232, 33000, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 1000, 3000, 5, N'Peasant', 4, CAST(0.50 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Beryl Earrings', N'Earrings', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 234, 33002, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 2000, 8000, 5, N'Peasant', 8, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Coral Earrings', N'Earrings', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 231, 32999, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 2000, 10000, 5, N'Peasant', 12, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gold Earrings', N'Earrings', 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 230, 32998, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 0, 1000, 3000, 5, N'Peasant', 4, CAST(0.55 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Silver Earrings', N'Earrings', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 233, 33001, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 2000, 10000, 5, N'Peasant', 15, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ruby Earrings', N'Earrings', 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 1847, 34615, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 2500, 12000, 5, N'Peasant', 25, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Skull Clips', N'Earrings', 0, 0, 1, 1, 0, 0, 1, 2, 0, 0, 2, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 1695, 34463, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 2300, 11000, 5, N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Pearl Earrings', N'Earrings', 0, 200, 0, 0, 1, 1, 0, 0, 5, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1846, 34614, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 15000, 5, N'Peasant', 28, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril Earrings', N'Earrings', 0, 300, 0, 1, 0, 0, 0, 0, 5, 0, 0, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 1845, 34613, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 3000, 15000, 5, N'Peasant', 35, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Delicate Gold Earrings', N'Earrings', 500, 0, 0, 2, 0, 0, 0, 1, 0, 0, 2, 5)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 1422, 34190, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 25000, 5, N'Peasant', 50, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Salve Earrings', N'Earrings', 700, 100, 1, 0, 0, 0, 0, 0, 5, 0, 2, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 1423, 34191, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 25000, 5, N'Peasant', 57, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stalwart Earrings', N'Earrings', 900, 0, 1, 3, 0, 0, 2, 0, 0, 5, 5, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 1424, 34192, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 5000, 25000, 5, N'Peasant', 55, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Glaive Earrings', N'Earrings', 200, 700, 1, 0, 4, 3, 0, 0, 0, 10, 0, 5)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1425, 34193, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 7000, 29000, 5, N'Peasant', 68, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Duality Earrings', N'Earrings', 500, 500, 1, 2, 2, 1, 1, 0, 5, 5, 2, 5)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 1426, 34194, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 9000, 50000, 5, N'Peasant', 90, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Feathered Might Clips', N'Earrings', 600, 0, 0, 4, 0, 0, 0, 0, 0, 0, 10, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 1427, 34195, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 9000, 50000, 5, N'Peasant', 90, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Feathered Mana Clips', N'Earrings', 0, 600, 0, 0, 4, 0, 0, 0, 10, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 1428, 34196, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 9000, 50000, 5, N'Peasant', 90, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Feathered Insight Clips', N'Earrings', 0, 600, 0, 0, 0, 4, 0, 0, 10, 0, 0, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 1429, 34197, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 9000, 50000, 5, N'Peasant', 90, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Feathered Stone Clips', N'Earrings', 600, 600, 3, 0, 0, 0, 4, 0, 0, 10, 0, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 1430, 34198, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 9000, 50000, 5, N'Peasant', 90, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Feathered Enchanted Clips', N'Earrings', 600, 0, 1, 0, 0, 0, 0, 4, 5, 5, 10, 0)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 1714, 34482, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 12000, 62000, 5, N'Peasant', 110, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Earrings', N'Earrings', 900, 900, 2, 2, 2, 2, 2, 2, 5, 10, 10, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 1841, 34609, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 20000, 84000, 5, N'Peasant', 125, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Garnet Studded Earrings', N'Earrings', 1250, 300, 2, 5, 0, 0, 5, 5, 7, 10, 15, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 1842, 34610, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 20000, 84000, 5, N'Peasant', 125, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sapphire Studded Earrings', N'Earrings', 300, 1250, 2, 0, 5, 5, 5, 0, 15, 10, 15, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 1843, 34611, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 20000, 84000, 5, N'Peasant', 125, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ruby Studded Earrings', N'Earrings', 1500, 0, 3, 6, 0, 0, 6, 2, 15, 10, 10, 15)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 1844, 34612, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 20000, 84000, 5, N'Peasant', 125, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emerald Studded Earrings', N'Earrings', 0, 1500, 3, 0, 6, 6, 2, 0, 15, 10, 15, 10)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 2061, 34829, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 35000, 138000, 5, N'Peasant', 152, CAST(0.13 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ruby Satchel Earrings', N'Earrings', 2000, 0, 3, 9, 0, 0, 9, 4, 25, 15, 15, 15)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 2062, 34830, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 35000, 138000, 5, N'Peasant', 152, CAST(0.13 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sapphire Satchel Earrings', N'Earrings', 600, 1800, 3, 0, 8, 8, 8, 0, 25, 15, 15, 15)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 2063, 34831, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 35000, 138000, 5, N'Peasant', 152, CAST(0.13 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emerald Satchel Earrings', N'Earrings', 0, 2000, 3, 0, 9, 9, 4, 0, 25, 15, 15, 15)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 2064, 34832, N'Earring', N'NormalEquipPerish', N'Both', N'None', N'None', 1, 1, 35000, 138000, 5, N'Peasant', 152, CAST(0.13 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Garnet Satchel Earrings', N'Earrings', 1800, 600, 3, 8, 0, 0, 8, 8, 25, 15, 15, 15)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 2065, 34833, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 50000, 175000, 5, N'Peasant', 180, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emblazoned Sapphire Earrings', N'Earrings', 1000, 2500, 4, 0, 10, 10, 10, 0, 30, 20, 20, 20)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 2066, 34834, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 50000, 175000, 5, N'Peasant', 180, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emblazoned Emerald Earrings', N'Earrings', 0, 3000, 4, 0, 12, 12, 6, 0, 30, 20, 20, 20)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 2067, 34835, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 50000, 175000, 5, N'Peasant', 180, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emblazoned Diamond Earrings', N'Earrings', 4500, 0, 5, 7, 7, 7, 9, 0, 30, 25, 20, 20)
INSERT [dbo].[Earrings] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 2068, 34836, N'Earring', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 50000, 175000, 5, N'Peasant', 180, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Emblazoned Garnet Earrings', N'Earrings', 2500, 1000, 4, 10, 0, 0, 10, 10, 30, 20, 20, 20)
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Earrings] ADD  DEFAULT ((0)) FOR [Regen]
GO
