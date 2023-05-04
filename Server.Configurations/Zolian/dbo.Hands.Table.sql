USE [Zolian]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Regen__4356F04A]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Dmg__4262CC11]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Hit__416EA7D8]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__MagicResi__407A839F]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Dexterity__3F865F66]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Constitut__3E923B2D]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Wisdom__3D9E16F4]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Intellige__3CA9F2BB]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Strength__3BB5CE82]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__ArmorClas__3AC1AA49]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__MP__39CD8610]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__HP__38D961D7]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Color__37E53D9E]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__StageRequ__36F11965]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__DropRate__35FCF52C]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__LevelRequ__3508D0F3]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Class__3414ACBA]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Worth__33208881]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Enchantab__322C6448]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__CarryWeig__3138400F]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Flags__30441BD6]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__DisplayIm__2F4FF79D]
GO
ALTER TABLE [dbo].[Hands] DROP CONSTRAINT [DF__Hands__Image__2E5BD364]
GO
/****** Object:  Table [dbo].[Hands]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hands]') AND type in (N'U'))
DROP TABLE [dbo].[Hands]
GO
/****** Object:  Table [dbo].[Hands]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hands](
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
ALTER TABLE [dbo].[Hands] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 224, 32992, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 3000, 15000, 10, N'Monk', 9, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leather Bracer', N'Arms', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 227, 32995, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 2, 1, 3000, 2000, 10, N'Peasant', 9, CAST(0.75 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leather Gauntlet', N'Hands', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 10189, 42957, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 6, 1, 12000, 200000, 10, N'Peasant', 99, CAST(0.75 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Red Plamit Glove', N'Hands', 2000, -5000, 8, 5, 2, 2, 3, 5, 10, 10, 15, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 249, 33017, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 6, 1, 6000, 25000, 10, N'Peasant', 25, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron Gauntlet', N'Hands', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 248, 33016, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 6, 1, 6000, 33000, 10, N'Monk', 21, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron Bracer', N'Arms', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 908, 33676, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 5, 1, 8000, 37000, 10, N'Monk', 38, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Chain Bracer', N'Arms', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 909, 33677, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 4, 1, 12000, 80000, 10, N'Monk', 50, CAST(0.05 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Signet Bracer', N'Arms', 200, 200, 5, 1, 1, 1, 1, 1, 5, 5, 2, 5)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1809, 34577, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 4, 1, 8000, 42000, 10, N'Peasant', 43, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Padded Gauntlet', N'Hands', 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 1810, 34578, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 5, 1, 10000, 70000, 10, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leopo Glove', N'Hands', 0, -100, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 1815, 34583, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 3, 1, 7000, 30000, 10, N'Arcanus', 40, CAST(0.07 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Straw Glove', N'Hands', 0, 350, 3, 0, 3, 3, 0, 0, 5, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 1816, 34584, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 4, 1, 15000, 52000, 10, N'Cleric', 67, CAST(0.04 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ringer Glove', N'Hands', 400, 0, 5, 0, 3, 0, 4, 1, 5, 5, 0, 5)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 1817, 34585, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 4, 1, 15000, 64000, 10, N'Arcanus', 81, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Magic Glove', N'Hands', 0, 500, 5, 0, 5, 5, 0, 0, 10, 0, 0, 0)
INSERT [dbo].[Hands] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1394, 34162, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 6, 1, 25000, 100000, 10, N'Monk', 74, CAST(0.18 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Spiked Bracer', N'Arms', 400, 400, 6, 0, 0, 0, 0, 0, 0, 0, 4, 10)
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Hands] ADD  DEFAULT ((0)) FOR [Regen]
GO
