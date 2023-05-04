USE [Zolian]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Regen__390E6C01]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Dmg__381A47C8]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Hit__3726238F]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__MagicResi__3631FF56]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Dexterity__353DDB1D]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Constitut__3449B6E4]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Wisdom__335592AB]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Intellige__32616E72]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Strength__316D4A39]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__ArmorClas__30792600]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__MP__2F8501C7]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__HP__2E90DD8E]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Color__2D9CB955]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__StageRequ__2CA8951C]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__DropRate__2BB470E3]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__LevelRequ__2AC04CAA]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Class__29CC2871]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Worth__28D80438]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Enchantab__27E3DFFF]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__CarryWeig__26EFBBC6]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Flags__25FB978D]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__DisplayIm__25077354]
GO
ALTER TABLE [dbo].[Belts] DROP CONSTRAINT [DF__Belts__Image__24134F1B]
GO
/****** Object:  Table [dbo].[Belts]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Belts]') AND type in (N'U'))
DROP TABLE [dbo].[Belts]
GO
/****** Object:  Table [dbo].[Belts]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Belts](
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
ALTER TABLE [dbo].[Belts] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 246, 33014, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Void', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 244, 33012, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Earth', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 242, 33010, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Fire', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 245, 33013, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Holy', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 241, 33009, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Water', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Sea Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 243, 33011, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Wind', 1, 1, 5000, 2000, 11, N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Belt', N'Belts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Void', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Void', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Earth', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Earth', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Fire', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Fire', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Holy', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Holy', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Water', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Water Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Water', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Water Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 1902, 34670, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Wind', 1, 1, 20000, 50000, 11, N'Peasant', 85, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Braided Hy-Brasyl Belt', N'Belts', 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 1903, 34671, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Wind', 1, 1, 15000, 40000, 11, N'Peasant', 71, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Braided Mythril Belt', N'Belts', 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Void', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Earth', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Fire', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'None', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Holy', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Water', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Water Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 237, 33005, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Wind', 1, 1, 9000, 10000, 11, N'Peasant', 35, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Hy-Brasyl Belt', N'Belts', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 1898, 34666, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Void', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Dark Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 1894, 34662, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Earth', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Earth Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 1892, 34660, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Fire', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Fire Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 1897, 34665, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Holy', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Light Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 1891, 34659, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Water', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Sea Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 1893, 34661, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Wind', 1, 1, 12000, 30000, 11, N'Peasant', 60, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Jeweled Wind Belt', N'Belts', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (32, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Void', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (33, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Earth', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (34, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Fire', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (35, 235, 33003, N'Belt', N'NormalEquipElement', N'Both', N'None', N'None', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (36, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Holy', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (37, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Water', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Sea Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (38, 235, 33003, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Wind', 1, 1, 6000, 3000, 11, N'Peasant', 11, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Leather Belt', N'Belts', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (39, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Void', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (40, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Earth', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Earth Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (41, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Fire', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Fire Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (42, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Holy', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (43, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'None', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (44, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Water', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Water Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (45, 236, 33004, N'Belt', N'NormalEquipElementPerish', N'Both', N'None', N'Wind', 1, 1, 7000, 5000, 11, N'Peasant', 20, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Wind Mythril Belt', N'Belts', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (46, 10190, 42958, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Void', 6, 1, 20000, 500000, 11, N'Peasant', 99, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Dark Red Plamit Belt', N'Belts', 2000, -5000, 8, 5, 2, 2, 3, 5, 10, 10, 15, 0)
INSERT [dbo].[Belts] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (47, 10190, 42958, N'Belt', N'NormalEquipElement', N'Both', N'None', N'Holy', 6, 1, 20000, 500000, 11, N'Peasant', 99, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'', N'Light Red Plamit Belt', N'Belts', 2000, -5000, 8, 5, 2, 2, 3, 5, 10, 10, 15, 0)
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Belts] ADD  DEFAULT ((0)) FOR [Regen]
GO
