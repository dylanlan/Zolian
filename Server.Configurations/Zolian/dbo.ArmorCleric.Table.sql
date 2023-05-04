USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Regen__40257DE4]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCleric__Dmg__3F3159AB]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCleric__Hit__3E3D3572]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Magic__3D491139]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Dexte__3C54ED00]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Const__3B60C8C7]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Wisdo__3A6CA48E]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Intel__39788055]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Stren__38845C1C]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Armor__379037E3]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCleric__MP__369C13AA]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCleric__HP__35A7EF71]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Color__34B3CB38]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Stage__33BFA6FF]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__DropR__32CB82C6]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Level__31D75E8D]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Class__30E33A54]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Worth__2FEF161B]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Encha__2EFAF1E2]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Carry__2E06CDA9]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Flags__2D12A970]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Displ__2C1E8537]
GO
ALTER TABLE [dbo].[ArmorCleric] DROP CONSTRAINT [DF__ArmorCler__Image__2B2A60FE]
GO
/****** Object:  Table [dbo].[ArmorCleric]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorCleric]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorCleric]
GO
/****** Object:  Table [dbo].[ArmorCleric]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorCleric](
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
ALTER TABLE [dbo].[ArmorCleric] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 5, 32868, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 800, 2, N'Cleric', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Cowl', N'', 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 5, 32887, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 800, 2, N'Cleric', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gorget Gown', N'', 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 236, 34378, N'Armor', N'NormalEquipment', N'Male', 9, 0, 6000, 7000, 2, N'Cleric', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Holy Cowl', N'', 0, 0, 18, -1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 236, 34403, N'Armor', N'NormalEquipment', N'Female', 9, 0, 6000, 7000, 2, N'Cleric', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Gorget', N'', 0, 0, 18, -1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 237, 34379, N'Armor', N'NormalEquipment', N'Male', 13, 0, 9000, 14500, 2, N'Cleric', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Mythril-Woven Coat', N'', 0, 0, 26, 0, 2, 2, 0, 0, 10, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 237, 34404, N'Armor', N'NormalEquipment', N'Female', 13, 0, 9000, 14500, 2, N'Cleric', 26, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mythril-Woven Gorget', N'', 0, 0, 26, 0, 2, 2, 0, 0, 10, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 55, 33187, N'Armor', N'NormalEquipment', N'Male', 21, 0, 10000, 35000, 2, N'Cleric', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Acolyte''s Coat', N'', 0, 0, 45, 0, 2, 2, 1, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 10, 32892, N'Armor', N'NormalEquipment', N'Female', 21, 0, 10000, 35000, 2, N'Cleric', 41, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Acolyte''s Dress', N'', 0, 0, 45, 0, 2, 2, 1, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 97, 33193, N'Armor', N'NormalEquipment', N'Male', 27, 0, 12000, 65000, 2, N'Cleric', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Doctor''s Coat', N'', 0, 0, 60, 0, 3, 2, 0, 0, 0, 0, 0, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 238, 34405, N'Armor', N'NormalEquipment', N'Female', 27, 0, 12000, 65000, 2, N'Cleric', 56, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Nurse''s Dress', N'', 0, 0, 60, 0, 3, 2, 0, 0, 0, 0, 0, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 210, 33879, N'Armor', N'NormalEquipment', N'Male', 32, 0, 15000, 80000, 2, N'Cleric', 68, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Coat of Faith', N'', 0, 0, 64, 1, 4, 3, 0, 0, 10, 5, 0, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 210, 33880, N'Armor', N'NormalEquipment', N'Female', 32, 0, 15000, 80000, 2, N'Cleric', 68, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gown of Faith', N'', 0, 0, 64, 1, 4, 3, 0, 0, 10, 5, 0, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 115, 33551, N'Armor', N'NormalEquipment', N'Male', 37, 0, 17000, 115000, 2, N'Cleric', 81, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Pyrrhic Mantle', N'', 0, 0, 71, 0, 3, 4, 1, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 239, 34406, N'Armor', N'NormalEquipment', N'Female', 37, 0, 17000, 115000, 2, N'Cleric', 81, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Frock of the Faithful', N'', 0, 0, 71, 0, 3, 4, 1, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 39, 33072, N'Armor', N'NormalEquipment', N'Male', 39, 0, 21750, 128000, 2, N'Cleric', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Robe of Lords', N'', 0, 0, 78, 2, 4, 4, 0, 0, 5, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 135, 33599, N'Armor', N'NormalEquipment', N'Female', 39, 0, 21750, 128000, 2, N'Cleric', 90, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Robe of Sages', N'', 0, 0, 78, 2, 4, 4, 0, 0, 5, 5, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 138, 33558, N'Armor', N'NormalEquipment', N'Male', 48, 0, 28750, 387500, 2, N'Cleric', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lead Jupe', N'', 0, 0, 85, 4, 0, 0, 4, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 136, 33600, N'Armor', N'NormalEquipment', N'Female', 48, 0, 28750, 387500, 2, N'Cleric', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Lead Stoller', N'', 0, 0, 85, 4, 0, 0, 4, 4, 0, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 118, 33554, N'Armor', N'NormalEquipment', N'Male', 61, 0, 35250, 650000, 2, N'Cleric', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Grace Cowl', N'', 200, 300, 92, 0, 6, 0, 0, 0, 20, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 39, 33075, N'Armor', N'NormalEquipment', N'Female', 61, 0, 35250, 650000, 2, N'Cleric', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Clemency Dress', N'', 200, 300, 92, 0, 6, 0, 0, 0, 20, 0, 0, 0)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 156, 33635, N'Armor', N'NormalEquipment', N'Male', 35, 0, 39500, 1200000, 2, N'Cleric', 130, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Vindicated Mantle', N'', 1000, 1500, 107, 0, 10, 5, 0, 0, 50, 10, 10, 20)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 156, 33640, N'Armor', N'NormalEquipment', N'Female', 35, 0, 39500, 1200000, 2, N'Cleric', 130, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Absolution Robes', N'', 1000, 1500, 107, 0, 10, 5, 0, 0, 50, 10, 10, 20)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 179, 33753, N'Armor', N'NormalEquipment', N'Male', 37, 0, 47000, 3850000, 2, N'Cleric', 145, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Reverent Vestments', N'', 2000, 3000, 114, 0, 12, 5, 2, 0, 60, 15, 15, 25)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 179, 33743, N'Armor', N'NormalEquipment', N'Female', 37, 0, 47000, 3850000, 2, N'Cleric', 145, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Reverent Wraps', N'', 2000, 3000, 114, 0, 12, 5, 2, 0, 60, 15, 15, 25)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 211, 33881, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 15000, 58000, 4, N'Cleric', 68, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Cappello Romano', N'', 400, 800, 3, 0, 3, 3, 0, 0, 10, 0, 0, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 157, 33653, N'Helmet', N'NormalEquipment', N'Male', 3, 0, 39500, 750000, 4, N'Cleric', 130, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Cleric''s Mitre', N'', 500, 1000, 4, 0, 5, 4, 0, 0, 20, 10, 7, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 157, 33654, N'Helmet', N'NormalEquipment', N'Female', 3, 0, 39500, 750000, 4, N'Cleric', 130, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Cleric''s Cornette', N'', 500, 1000, 4, 0, 5, 4, 0, 0, 20, 10, 7, 5)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (28, 167, 33773, N'Helmet', N'NormalEquipment', N'Male', 4, 0, 47000, 900000, 4, N'Cleric', 145, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Empowered Mitre', N'', 1000, 1500, 5, 0, 6, 5, 0, 0, 30, 13, 13, 10)
INSERT [dbo].[ArmorCleric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (29, 167, 33763, N'Helmet', N'NormalEquipment', N'Female', 4, 0, 47000, 900000, 4, N'Cleric', 145, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Empowered Cornette', N'', 1000, 1500, 5, 0, 6, 5, 0, 0, 30, 13, 13, 10)
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorCleric] ADD  DEFAULT ((0)) FOR [Regen]
GO
