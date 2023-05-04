USE [Zolian]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Regen__58C70E7C]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Dmg__57D2EA43]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Hit__56DEC60A]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__MagicRe__55EAA1D1]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Dexteri__54F67D98]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Constit__5402595F]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Wisdom__530E3526]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Intelli__521A10ED]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Strengt__5125ECB4]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__ArmorCl__5031C87B]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__MP__4F3DA442]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__HP__4E498009]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Color__4D555BD0]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__StageRe__4C613797]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__DropRat__4B6D135E]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__LevelRe__4A78EF25]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Class__4984CAEC]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Worth__4890A6B3]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Enchant__479C827A]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__CarryWe__46A85E41]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Flags__45B43A08]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Display__44C015CF]
GO
ALTER TABLE [dbo].[Greaves] DROP CONSTRAINT [DF__Greaves__Image__43CBF196]
GO
/****** Object:  Table [dbo].[Greaves]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Greaves]') AND type in (N'U'))
DROP TABLE [dbo].[Greaves]
GO
/****** Object:  Table [dbo].[Greaves]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Greaves](
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
ALTER TABLE [dbo].[Greaves] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 238, 33006, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 4, 1, 3000, 4000, 12, N'Peasant', 6, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Leather Greaves', N'Greaves', 0, -500, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 250, 33018, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 10, 1, 6000, 15000, 12, N'Peasant', 14, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Iron Greaves', N'Greaves', 0, -750, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 1856, 34624, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 8, 1, 8000, 19000, 12, N'Peasant', 21, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Spiked Leather Greaves', N'Greaves', 100, -250, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 239, 33007, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 8, 1, 9000, 25000, 12, N'Peasant', 36, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril Greaves', N'Greaves', 0, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 240, 33008, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 12, 1, 12000, 35000, 12, N'Peasant', 50, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Hy-Brasyl Greaves', N'Greaves', 400, -1250, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 912, 33680, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 10, 1, 15000, 50000, 12, N'Peasant', 70, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Steel Greaves', N'Greaves', 500, 100, 10, 0, 0, 0, 0, 0, 10, 0, 0, 10)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 1353, 34121, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 5, 1, 12000, 82000, 12, N'Peasant', 85, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Light Reinforced Greaves', N'Greaves', 100, 700, 10, 0, 2, 2, 0, 0, 10, 0, 0, 10)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1352, 34120, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 14, 1, 18000, 82000, 12, N'Peasant', 85, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Heavy Reinforced Greaves', N'Greaves', 700, 100, 12, 2, 0, 0, 2, 0, 10, 0, 0, 10)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 1354, 34122, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 14, 1, 25000, 120000, 12, N'Peasant', 96, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Light Wing Greaves', N'Greaves', 400, 1200, 13, -1, 3, 3, -1, 0, 15, 10, 5, 20)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 1355, 34123, N'Generic', N'NormalEquipment', N'Both', N'None', N'None', 16, 1, 30000, 120000, 12, N'Peasant', 96, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Heavy Wing Greaves', N'Greaves', 1250, 300, 15, 3, -1, -1, 3, 0, 10, 15, 5, 20)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 1356, 34124, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 13, 1, 60000, 136000, 12, N'Peasant', 122, CAST(0.14 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ebony Shinguards', N'Greaves', 1700, 0, 17, 3, 0, 0, 3, 0, 15, 15, 5, 25)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 1357, 34125, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 13, 1, 65000, 142000, 12, N'Peasant', 130, CAST(0.14 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mystic Shinguards', N'Greaves', 0, 1700, 16, 0, 3, 3, 0, 0, 15, 20, 5, 25)
INSERT [dbo].[Greaves] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1781, 34549, N'Generic', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 160000, 200000, 12, N'Peasant', 140, CAST(0.01 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Anklet', N'Greaves', -1500, -1000, 10, 10, 10, 10, 10, 10, 10, 20, 10, 20)
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Greaves] ADD  DEFAULT ((0)) FOR [Regen]
GO
