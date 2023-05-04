USE [Zolian]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Regen__7AA72534]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Dmg__79B300FB]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Hit__78BEDCC2]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Magic__77CAB889]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Dexte__76D69450]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Const__75E27017]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Wisdo__74EE4BDE]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Intel__73FA27A5]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Stren__7306036C]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Armor__7211DF33]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__MP__711DBAFA]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__HP__702996C1]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Color__6F357288]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Stage__6E414E4F]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__DropR__6D4D2A16]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Level__6C5905DD]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Class__6B64E1A4]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Worth__6A70BD6B]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Encha__697C9932]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Carry__688874F9]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Flags__679450C0]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Displ__66A02C87]
GO
ALTER TABLE [dbo].[Necklaces] DROP CONSTRAINT [DF__Necklaces__Image__65AC084E]
GO
/****** Object:  Table [dbo].[Necklaces]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Necklaces]') AND type in (N'U'))
DROP TABLE [dbo].[Necklaces]
GO
/****** Object:  Table [dbo].[Necklaces]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Necklaces](
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
ALTER TABLE [dbo].[Necklaces] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 202, 32970, N'Necklace', N'NormalEquipElement', N'Both', N'Void', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 197, 32965, N'Necklace', N'NormalEquipElement', N'Both', N'Earth', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Earth Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 205, 32973, N'Necklace', N'NormalEquipElement', N'Both', N'Fire', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Fire Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 203, 32971, N'Necklace', N'NormalEquipElement', N'Both', N'Holy', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 199, 32967, N'Necklace', N'NormalEquipElement', N'Both', N'Water', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sea Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 198, 32966, N'Necklace', N'NormalEquipElement', N'Both', N'Wind', N'None', 1, 1, 1000, 2000, 6, N'Peasant', 6, CAST(0.60 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wind Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Void', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Earth', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Earth Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Fire', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Fire Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Holy', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Water', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sea Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 195, 32963, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Wind', N'None', 1, 1, 2000, 800, 6, N'Peasant', 10, CAST(0.35 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wind Gold Jade Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 1869, 34637, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Void', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 1870, 34638, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Earth', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Earth Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 1867, 34635, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Fire', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Fire Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 1869, 34357, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Holy', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 1871, 34639, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Water', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Water Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 1872, 34640, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Wind', N'None', 1, 1, 15000, 2500, 6, N'Peasant', 80, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wind Kanna Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Void', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Earth', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Earth Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Fire', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Fire Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Holy', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'None', N'None', 1, 0, 800, 2000, 6, N'Peasant', 6, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Water', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sea Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 205, 32962, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Wind', N'None', 1, 1, 800, 2000, 6, N'Peasant', 21, CAST(0.45 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wind Pearl Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 10193, 42961, N'Necklace', N'NormalEquipElement', N'Both', N'Void', N'None', 1, 1, 15000, 500000, 6, N'Peasant', 500, CAST(0.15 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Void Red Plamit Necklace', N'Necklace', 2000, 2000, 6, 7, 2, 2, 7, 7, 10, 15, 20, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 10193, 42961, N'Necklace', N'NormalEquipElement', N'Both', N'Holy', N'None', 1, 1, 15000, 500000, 6, N'Peasant', 500, CAST(0.15 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Holy Red Plamit Necklace', N'Necklace', 2000, 2000, 6, 7, 2, 2, 7, 7, 10, 15, 20, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 935, 33703, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Void', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Void Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 954, 33722, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Holy', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (30, 204, 32961, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Fire', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Fire Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (31, 935, 33703, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Water', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Water Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (32, 937, 33705, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Wind', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wind Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
INSERT [dbo].[Necklaces] ([EquipmentId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [OffenseElement], [DefenseElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [EquipmentScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (33, 936, 33704, N'Necklace', N'NormalEquipElementPerish', N'Both', N'Earth', N'None', 1, 1, 6000, 8000, 6, N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Earth Amber Necklace', N'Necklace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 0)
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[Necklaces] ADD  DEFAULT ((0)) FOR [Regen]
GO
