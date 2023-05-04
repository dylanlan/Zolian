USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Regen__783FB9D5]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefend__Dmg__774B959C]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefend__Hit__76577163]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Magic__75634D2A]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Dexte__746F28F1]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Const__737B04B8]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Wisdo__7286E07F]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Intel__7192BC46]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Stren__709E980D]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Armor__6FAA73D4]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefende__MP__6EB64F9B]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefende__HP__6DC22B62]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Color__6CCE0729]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Stage__6BD9E2F0]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__DropR__6AE5BEB7]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Level__69F19A7E]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Class__68FD7645]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Worth__6809520C]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Encha__67152DD3]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Carry__6621099A]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Flags__652CE561]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Displ__6438C128]
GO
ALTER TABLE [dbo].[ArmorDefender] DROP CONSTRAINT [DF__ArmorDefe__Image__63449CEF]
GO
/****** Object:  Table [dbo].[ArmorDefender]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorDefender]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorDefender]
GO
/****** Object:  Table [dbo].[ArmorDefender]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorDefender](
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
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 64, 33196, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 950, 2, N'Defender', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leather Donet', N'', 0, 0, 12, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 64, 33136, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 950, 2, N'Defender', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Leather Guard', N'', 0, 0, 12, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 45, 33201, N'Armor', N'NormalEquipment', N'Female', 10, 0, 6000, 9450, 2, N'Defender', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron-woven Cuirass', N'', 0, 0, 20, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 45, 33141, N'Armor', N'NormalEquipment', N'Male', 10, 0, 6000, 9450, 2, N'Defender', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Iron-woven Jupe', N'', 0, 0, 20, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 83, 33203, N'Armor', N'NormalEquipment', N'Female', 14, 0, 9000, 17950, 2, N'Defender', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Padded Cotehardie', N'', 0, 0, 35, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 83, 33143, N'Armor', N'NormalEquipment', N'Male', 14, 0, 9000, 17950, 2, N'Defender', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Padded Lorem', N'', 0, 0, 35, 0, -1, -1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 17, 32915, N'Armor', N'NormalEquipment', N'Male', 23, 0, 12000, 26450, 2, N'Defender', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kasmanium Full Plate', N'', 0, 0, 51, 1, -1, -1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 17, 32925, N'Armor', N'NormalEquipment', N'Female', 23, 0, 12000, 26450, 2, N'Defender', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kasmanium Full Hauberk', N'', 0, 0, 51, 1, -1, -1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 22, 32920, N'Armor', N'NormalEquipment', N'Male', 30, 0, 13500, 42400, 2, N'Defender', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Reinforced Chainmail', N'', 0, 0, 65, 2, -2, -2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 22, 32930, N'Armor', N'NormalEquipment', N'Female', 30, 0, 13500, 42400, 2, N'Defender', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Reinforced Bliaut', N'', 0, 0, 65, 2, -2, -2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 28, 33029, N'Armor', N'NormalEquipment', N'Male', 35, 0, 15000, 51300, 2, N'Defender', 68, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Iplet Full Plate', N'', 0, 0, 72, 3, -3, -3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 249, 34416, N'Armor', N'NormalEquipment', N'Female', 35, 0, 15000, 51300, 2, N'Defender', 68, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Crimson Full Hauberk', N'', 0, 0, 72, 3, -3, -3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 36, 33068, N'Armor', N'NormalEquipment', N'Both', 40, 0, 25000, 150000, 2, N'Defender', 81, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Carnun Full Plate', N'', 0, 0, 77, 4, -8, -4, 8, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 27, 32935, N'Armor', N'NormalEquipment', N'Male', 41, 0, 22000, 94000, 2, N'Defender', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Iron Dome Mail', N'', 0, 0, 85, 6, -6, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 27, 32781, N'Armor', N'NormalEquipment', N'Female', 41, 0, 22000, 94000, 2, N'Defender', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Mail', N'', 0, 0, 85, 6, -6, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 125, 33531, N'Armor', N'NormalEquipment', N'Male', 53, 0, 24000, 115000, 2, N'Defender', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron Dome Full Plate', N'', 0, 0, 90, 5, -5, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 124, 33576, N'Armor', N'NormalEquipment', N'Female', 53, 0, 24000, 115000, 2, N'Defender', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Full Plate', N'', 0, 0, 90, 5, -5, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 29, 32785, N'Armor', N'NormalEquipment', N'Male', 64, 0, 30000, 200000, 2, N'Defender', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Iron Dome Full Plate', N'', 0, 0, 98, 4, -4, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 29, 32783, N'Armor', N'NormalEquipment', N'Female', 64, 0, 30000, 200000, 2, N'Defender', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Phoenix Full Plate', N'', 0, 0, 98, 4, -4, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 157, 33631, N'Armor', N'NormalEquipment', N'Male', 40, 0, 45000, 520000, 2, N'Defender', 125, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Panoply Half Plate', N'', 1500, 1000, 115, 2, 2, 1, 2, 6, 40, 10, 7, 20)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 157, 33636, N'Armor', N'NormalEquipment', N'Female', 40, 0, 45000, 520000, 2, N'Defender', 125, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Panoply Plated Hauberk', N'', 1500, 1000, 115, 2, 2, 1, 2, 6, 40, 10, 7, 20)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 175, 33749, N'Armor', N'NormalEquipment', N'Male', 43, 0, 52000, 1000000, 2, N'Defender', 140, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Subete wo Yudanero', N'', 5000, 1800, 119, 3, 3, 1, 2, 7, 40, 15, 14, 40)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 175, 33739, N'Armor', N'NormalEquipment', N'Female', 43, 0, 52000, 1000000, 2, N'Defender', 140, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Iontaoibh Me', N'', 5000, 1800, 119, 3, 3, 1, 2, 7, 40, 15, 14, 40)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 112, 32936, N'Helmet', N'NormalEquipment', N'Male', 3, 0, 22000, 75000, 4, N'Defender', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron Dome Helm', N'', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 154, 33572, N'Helmet', N'NormalEquipment', N'Female', 3, 0, 22000, 75000, 4, N'Defender', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Phoenix Rising Helm', N'', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 155, 33532, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 24000, 82000, 4, N'Defender', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hardened Iron Dome Helm', N'', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 112, 32782, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 24000, 82000, 4, N'Defender', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hardened Phoenix Helm', N'', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 113, 32786, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 28000, 90000, 4, N'Defender', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Iron Dome Helm', N'', 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 113, 32784, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 28000, 90000, 4, N'Defender', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Phoenix Helm', N'', 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (32, 178, 33808, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 45000, 500000, 4, N'Defender', 125, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Panoply War Helm', N'', 500, 500, 5, 3, 0, 0, 3, 1, 20, 10, 5, 25)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (33, 178, 33809, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 45000, 500000, 4, N'Defender', 125, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Panoply War Crown', N'', 500, 500, 5, 3, 0, 0, 3, 1, 20, 10, 5, 25)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (34, 163, 33769, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 55000, 800000, 4, N'Defender', 140, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Subete War Helm', N'', 1000, 1000, 6, 0, 0, 0, 0, 0, 30, 15, 7, 25)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (35, 163, 33759, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 55000, 800000, 4, N'Defender', 140, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iontaoibh Me Helm', N'', 1000, 1000, 6, 0, 0, 0, 0, 0, 30, 15, 7, 25)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (49, 341, 43030, N'Armor', N'NormalEquipment', N'Both', 40, 0, 82000, 2500000, 2, N'Defender', 250, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Golden Dragon Armor', N'Dragon', 8000, 2300, 135, 4, 0, 0, 3, 0, 40, 20, 24, 60)
INSERT [dbo].[ArmorDefender] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (50, 133, 43032, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 82000, 2000000, 4, N'Defender', 250, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Golden Dragon Helm', N'Dragon', 1000, 800, 9, 4, 0, 0, 3, 0, 40, 20, 24, 60)
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorDefender] ADD  DEFAULT ((0)) FOR [Regen]
GO
