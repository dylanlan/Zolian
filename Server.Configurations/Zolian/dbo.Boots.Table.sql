USE [Zolian]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Regen__54B68676]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Dmg__53C2623D]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Hit__52CE3E04]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__MagicResi__51DA19CB]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Dexterity__50E5F592]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Constitut__4FF1D159]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Wisdom__4EFDAD20]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Intellige__4E0988E7]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Strength__4D1564AE]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__ArmorClas__4C214075]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__MP__4B2D1C3C]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__HP__4A38F803]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Color__4944D3CA]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__StageRequ__4850AF91]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__DropRate__475C8B58]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__LevelRequ__4668671F]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Class__457442E6]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Worth__44801EAD]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Enchantab__438BFA74]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__CarryWeig__4297D63B]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Flags__41A3B202]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__DisplayIm__40AF8DC9]
GO
ALTER TABLE [dbo].[Boots] DROP CONSTRAINT [DF__Boots__Image__3FBB6990]
GO
/****** Object:  Table [dbo].[Boots]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boots]') AND type in (N'U'))
DROP TABLE [dbo].[Boots]
GO
/****** Object:  Table [dbo].[Boots]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boots](
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
ALTER TABLE [dbo].[Boots] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 1, 32844, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 3000, 1000, 13, N'Peasant', 1, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Blue', N'', N'Boots', N'Boots', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 1, 32880, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 5000, 10000, 13, N'Peasant', 11, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Black', N'', N'Grey Boots', N'Boots', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 1, 32842, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 9000, 12000, 13, N'Peasant', 18, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Grey', N'', N'Cured Boots', N'Boots', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 1, 32882, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 9000, 15000, 13, N'Peasant', 25, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Olive', N'', N'Plague Boots', N'Boots', 0, 0, 0, 0, 0, 0, -1, 2, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 1, 32882, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 15000, 20000, 13, N'Peasant', 33, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Green', N'', N'Shagreen Boots', N'Boots', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 11, 34548, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 1, 1, 10000, 35000, 13, N'Peasant', 45, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Silk Boots', N'Boots', 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 3, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 10000, 125000, 13, N'Peasant', 45, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Royal', N'', N'Grim Boots', N'Boots', 0, 0, 1, 3, 0, 0, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 3, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 10000, 125000, 13, N'Peasant', 45, CAST(0.30 AS Decimal(3, 2)), N'Class', N'White', N'', N'Pure Boots', N'Boots', 0, 0, 0, 1, 1, 0, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 3, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 10000, 135000, 13, N'Peasant', 55, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Tan', N'', N'Dust Boots', N'Boots', 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 3, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 10000, 135000, 13, N'Peasant', 55, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Orange', N'', N'Star Boots', N'Boots', 0, 0, 0, 0, 0, 1, 1, 3, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 3, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 2, 1, 10000, 135000, 13, N'Peasant', 55, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Platinum', N'', N'Grace Boots', N'Boots', 0, 0, 0, 0, 2, 2, 0, 2, 10, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 3, 32863, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 2, 1, 13000, 140000, 13, N'Peasant', 67, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Saffian Boots', N'Boots', 0, 300, 0, 0, 0, 0, 0, 4, 5, 5, 5, 5)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 3, 32863, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 3, 1, 15000, 145000, 13, N'Peasant', 77, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Scarlet', N'', N'Magma Boots', N'Boots', 400, 0, 1, 2, 0, 0, 2, 5, 5, 5, 5, 5)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 257, 32863, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 3, 1, 18000, 150000, 13, N'Peasant', 95, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Brown', N'', N'Enchanted Boots', N'Boots', 500, 200, 1, 0, 2, 2, 2, 6, 10, 10, 10, 10)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 258, 32863, N'Boot', N'NormalEquipPerish', N'Both', N'None', N'None', 3, 1, 20000, 164000, 13, N'Peasant', 105, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Brown', N'', N'Enchanted High Boots', N'Boots', 800, 0, 1, 4, 0, 0, 4, 10, 10, 15, 10, 10)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 3, 32863, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 3, 1, 22000, 170000, 13, N'Peasant', 110, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Brown', N'', N'Enchanted Slippers', N'Slippers', 200, 1000, 1, 0, 4, 4, 4, 8, 10, 15, 10, 10)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (59, 10187, 42955, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 5, 1, 12000, 400000, 13, N'Peasant', 500, CAST(0.30 AS Decimal(3, 2)), N'Forsaken', N'Lavender', N'', N'Red Plamit Boots', N'Boots', 2000, 2000, 10, 3, 3, 3, 3, 15, 10, 10, 15, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (60, 6, 43031, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 5, 1, 12000, 400000, 13, N'Defender', 450, CAST(0.30 AS Decimal(3, 2)), N'Forsaken', N'Lavender', N'', N'Golden Dragon Boots', N'Dragon', 1000, 1000, 3, 2, 2, 2, 2, 10, 0, 0, 0, 0)
INSERT [dbo].[Boots] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (61, 230, 43050, N'Boot', N'NormalEquipment', N'Both', N'None', N'None', 5, 1, 12000, 400000, 13, N'Berserker', 450, CAST(0.30 AS Decimal(3, 2)), N'Forsaken', N'Lavender', N'', N'Silver Dragon Boots', N'Dragon', 1000, 1000, 3, 2, 2, 2, 2, 10, 0, 0, 0, 0)
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Boots] ADD  DEFAULT ((0)) FOR [Regen]
GO
