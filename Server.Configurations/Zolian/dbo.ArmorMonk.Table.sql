USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Regen__247D636F]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Dmg__23893F36]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Hit__22951AFD]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Magic__21A0F6C4]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Dexte__20ACD28B]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Const__1FB8AE52]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Wisdo__1EC48A19]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Intel__1DD065E0]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Stren__1CDC41A7]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Armor__1BE81D6E]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__MP__1AF3F935]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__HP__19FFD4FC]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Color__190BB0C3]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Stage__18178C8A]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__DropR__17236851]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Level__162F4418]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Class__153B1FDF]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Worth__1446FBA6]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Encha__1352D76D]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Carry__125EB334]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Flags__116A8EFB]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Displ__10766AC2]
GO
ALTER TABLE [dbo].[ArmorMonk] DROP CONSTRAINT [DF__ArmorMonk__Image__0F824689]
GO
/****** Object:  Table [dbo].[ArmorMonk]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorMonk]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorMonk]
GO
/****** Object:  Table [dbo].[ArmorMonk]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorMonk](
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
ALTER TABLE [dbo].[ArmorMonk] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 1331, 34099, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'White Belt', N'', 300, 300, 5, 2, 2, 2, 2, 2, 10, 10, 5, 5)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 1332, 34100, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 40, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Yellow Belt', N'', 600, 600, 7, 3, 3, 3, 3, 3, 15, 10, 5, 10)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 1333, 34101, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 60, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Orange Belt', N'', 900, 900, 8, 4, 4, 4, 4, 4, 15, 15, 10, 10)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 1334, 34102, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 80, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Green Belt', N'', 1200, 1200, 8, 4, 4, 4, 4, 4, 15, 15, 10, 15)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 1335, 34103, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 130, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Purple Belt', N'', 1500, 1500, 9, 5, 5, 5, 5, 5, 20, 20, 15, 20)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 1336, 34104, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Blue Belt', N'', 3200, 2000, 10, 5, 5, 5, 5, 5, 25, 25, 25, 25)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 1337, 34105, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 200, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Brown Belt', N'', 4500, 3000, 11, 6, 5, 5, 6, 6, 25, 25, 25, 25)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1338, 34106, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 250, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Red Belt', N'', 6000, 4000, 11, 6, 6, 6, 6, 6, 30, 30, 30, 30)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 1339, 34107, N'Generic', N'NormalEquipmentBoundNoSell', N'Both', 1, 0, 80000, 80000, 14, N'Monk', 300, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Black Belt', N'', 8000, 6500, 12, 7, 7, 7, 7, 7, 35, 35, 35, 35)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 3, 32866, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 850, 2, N'Monk', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dobok', N'', 100, 0, 8, 0, 0, 0, 1, -1, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 3, 32885, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 850, 2, N'Monk', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Bodice', N'', 100, 0, 8, 0, 0, 0, 1, -1, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 13, 32876, N'Armor', N'NormalEquipment', N'Male', 6, 0, 6000, 8500, 2, N'Monk', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Training Garb', N'', 150, 0, 18, 0, 0, 0, 2, -2, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 60, 33212, N'Armor', N'NormalEquipment', N'Female', 6, 0, 6000, 8500, 2, N'Monk', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Training Bodice', N'', 150, 0, 18, 0, 0, 0, 2, -2, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 62, 33155, N'Armor', N'NormalEquipment', N'Male', 8, 0, 8000, 24000, 2, N'Monk', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Intermediate Garb', N'', 400, 0, 28, 0, 0, 0, 3, -3, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 59, 33211, N'Armor', N'NormalEquipment', N'Female', 8, 0, 8000, 24000, 2, N'Monk', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Intermediate Bodice', N'', 400, 0, 28, 0, 0, 0, 3, -3, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 8, 32871, N'Armor', N'NormalEquipment', N'Male', 11, 0, 13000, 42000, 2, N'Monk', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Weighted Garb', N'', 600, 0, 44, 0, 0, 0, 4, -4, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 13, 32895, N'Armor', N'NormalEquipment', N'Female', 11, 0, 13000, 42000, 2, N'Monk', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Weighted Bodice', N'', 600, 0, 44, 0, 0, 0, 4, -4, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 18, 32916, N'Armor', N'NormalEquipment', N'Male', 15, 0, 18000, 47250, 2, N'Monk', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Gi', N'', 700, 0, 58, 0, 0, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 18, 32926, N'Armor', N'NormalEquipment', N'Female', 15, 0, 18000, 47250, 2, N'Monk', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lotus', N'', 700, 0, 58, 0, 0, 0, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 141, 33565, N'Armor', N'NormalEquipment', N'Male', 21, 0, 21000, 68000, 2, N'Monk', 71, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Weighted Gi', N'', 900, 0, 66, 0, 0, 0, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 141, 33609, N'Armor', N'NormalEquipment', N'Female', 21, 0, 21000, 68000, 2, N'Monk', 71, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Weighted Lotus', N'', 900, 0, 66, 0, 0, 0, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 23, 32921, N'Armor', N'NormalEquipment', N'Male', 30, 0, 24000, 97000, 2, N'Monk', 85, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stone Fist Gi', N'', 900, 0, 70, 5, 0, 0, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 23, 32931, N'Armor', N'NormalEquipment', N'Female', 30, 0, 24000, 97000, 2, N'Monk', 85, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stone Fist Lotus', N'', 900, 0, 70, 5, 0, 0, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 40, 33074, N'Armor', N'NormalEquipment', N'Male', 31, 0, 25000, 115000, 2, N'Monk', 91, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Tiger''s Gi', N'', 1000, 0, 77, 7, 0, 0, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 40, 33074, N'Armor', N'NormalEquipment', N'Female', 31, 0, 25000, 115000, 2, N'Monk', 91, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Tiger''s Lotus', N'', 1000, 0, 77, 7, 0, 0, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 142, 33566, N'Armor', N'NormalEquipment', N'Male', 39, 0, 27000, 135000, 2, N'Monk', 98, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dragon''s Garb', N'', 1200, 0, 84, 9, 0, 0, 2, 0, 0, 5, 5, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 142, 33610, N'Armor', N'NormalEquipment', N'Female', 39, 0, 27000, 135000, 2, N'Monk', 98, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Dragon''s Kasaya', N'', 1200, 0, 84, 9, 0, 0, 2, 0, 0, 5, 5, 0)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 235, 34377, N'Armor', N'NormalEquipment', N'Male', 44, 0, 33000, 200000, 2, N'Monk', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Master''s Garb', N'', 1500, 0, 90, 10, 0, 0, 2, 0, 10, 10, 5, 5)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 235, 34402, N'Armor', N'NormalEquipment', N'Female', 44, 0, 33000, 200000, 2, N'Monk', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Master''s Kasaya', N'', 1500, 0, 90, 10, 0, 0, 2, 0, 10, 10, 5, 5)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 158, 33632, N'Armor', N'NormalEquipment', N'Male', 30, 0, 45000, 520000, 2, N'Monk', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Draconic Harness', N'', 3000, 1000, 98, 12, 0, 0, 2, 0, 20, 15, 10, 20)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 158, 33637, N'Armor', N'NormalEquipment', N'Female', 30, 0, 45000, 520000, 2, N'Monk', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Visha''s Garb', N'', 3000, 1000, 98, 12, 0, 0, 2, 0, 20, 15, 10, 20)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (32, 181, 33755, N'Armor', N'NormalEquipment', N'Male', 32, 0, 52000, 1000000, 2, N'Monk', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Kelberoth''s Tunic', N'', 5000, 2000, 105, 14, 0, 0, 3, 0, 20, 20, 12, 30)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (33, 181, 33745, N'Armor', N'NormalEquipment', N'Female', 32, 0, 52000, 1000000, 2, N'Monk', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Visha''s Body Wraps', N'', 5000, 2000, 105, 14, 0, 0, 3, 0, 20, 20, 12, 30)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (34, 169, 33775, N'Helmet', N'NormalEquipment', N'Male', 2, 0, 52000, 800000, 4, N'Monk', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Kelberoth''s Crown', N'', 1000, 500, 4, 0, 0, 0, 0, 3, 10, 15, 15, 20)
INSERT [dbo].[ArmorMonk] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (35, 169, 33765, N'Helmet', N'NormalEquipment', N'Female', 2, 0, 52000, 800000, 4, N'Monk', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Visha''s Ribbon', N'', 1000, 500, 4, 0, 0, 0, 0, 3, 10, 15, 15, 20)
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorMonk] ADD  DEFAULT ((0)) FOR [Regen]
GO
