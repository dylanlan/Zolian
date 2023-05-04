USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Regen__5BCD9859]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssass__Dmg__5AD97420]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssass__Hit__59E54FE7]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Magic__58F12BAE]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Dexte__57FD0775]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Const__5708E33C]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Wisdo__5614BF03]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Intel__55209ACA]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Stren__542C7691]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Armor__53385258]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssassi__MP__52442E1F]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssassi__HP__515009E6]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Color__505BE5AD]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Stage__4F67C174]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__DropR__4E739D3B]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Level__4D7F7902]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Class__4C8B54C9]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Worth__4B973090]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Encha__4AA30C57]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Carry__49AEE81E]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Flags__48BAC3E5]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Displ__47C69FAC]
GO
ALTER TABLE [dbo].[ArmorAssassin] DROP CONSTRAINT [DF__ArmorAssa__Image__46D27B73]
GO
/****** Object:  Table [dbo].[ArmorAssassin]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorAssassin]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorAssassin]
GO
/****** Object:  Table [dbo].[ArmorAssassin]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorAssassin](
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
ALTER TABLE [dbo].[ArmorAssassin] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 4, 32886, N'Armor', N'NormalEquipment', N'Female', 4, 0, 3000, 900, 2, N'Assassin', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Cotte', N'', 0, 0, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 4, 32867, N'Armor', N'NormalEquipment', N'Male', 4, 0, 3000, 900, 2, N'Assassin', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Scout Leather', N'', 0, 0, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 49, 33165, N'Armor', N'NormalEquipment', N'Male', 6, 0, 6000, 9400, 2, N'Assassin', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Runic Leather', N'', 0, 0, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 50, 33226, N'Armor', N'NormalEquipment', N'Female', 6, 0, 6000, 9400, 2, N'Assassin', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Runic Straps', N'', 0, 0, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 90, 33170, N'Armor', N'NormalEquipment', N'Male', 9, 0, 9000, 17900, 2, N'Assassin', 20, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Assailant Hide', N'', 0, 0, 23, 0, 0, 0, 0, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 89, 33229, N'Armor', N'NormalEquipment', N'Female', 9, 0, 9000, 17900, 2, N'Assassin', 20, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Corsette', N'', 0, 0, 23, 0, 0, 0, 0, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (7, 87, 33167, N'Armor', N'NormalEquipment', N'Male', 11, 0, 12000, 27000, 2, N'Assassin', 31, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Shadow Wrap', N'', 0, 0, 34, 0, 0, 0, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (8, 90, 33230, N'Armor', N'NormalEquipment', N'Female', 11, 0, 12000, 27000, 2, N'Assassin', 31, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Shadow Kagum', N'', 0, 0, 34, 0, 0, 0, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (9, 244, 34386, N'Armor', N'NormalEquipment', N'Male', 13, 0, 14400, 44000, 2, N'Assassin', 45, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Paluten', N'', 0, 0, 50, 0, 0, 0, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (10, 243, 34411, N'Armor', N'NormalEquipment', N'Female', 13, 0, 14400, 44000, 2, N'Assassin', 45, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Brigandine Corset', N'', 0, 0, 50, 0, 0, 0, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (11, 206, 33873, N'Armor', N'NormalEquipment', N'Male', 22, 0, 16500, 150000, 2, N'Assassin', 58, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Shadow Mail', N'', 0, 0, 54, 2, 0, -1, -1, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (12, 206, 33874, N'Armor', N'NormalEquipment', N'Female', 22, 0, 16500, 150000, 2, N'Assassin', 58, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Shadow Hauberk', N'', 0, 0, 54, 2, 0, -1, -1, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (13, 149, 33537, N'Armor', N'NormalEquipment', N'Male', 26, 0, 21000, 72000, 2, N'Assassin', 71, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Sailor''s Jacket', N'', 0, 0, 63, 0, 2, 0, 0, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (14, 150, 33582, N'Armor', N'NormalEquipment', N'Female', 26, 0, 21000, 72000, 2, N'Assassin', 71, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Captain''s Rose', N'', 0, 0, 63, 0, 2, 0, 0, 2, 0, 0, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (15, 243, 34385, N'Armor', N'NormalEquipment', N'Male', 35, 0, 23000, 94000, 2, N'Assassin', 87, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Pirate''s Hide', N'', 0, 0, 71, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (16, 243, 34410, N'Armor', N'NormalEquipment', N'Female', 35, 0, 23000, 94000, 2, N'Assassin', 87, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Buccaneer Coat', N'', 0, 0, 71, 0, 0, 0, 0, 0, 0, 5, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (17, 128, 33540, N'Armor', N'NormalEquipment', N'Male', 40, 0, 26700, 115000, 2, N'Assassin', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Keaton', N'', 0, 0, 82, 0, 0, 0, 0, 0, 0, 10, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (18, 128, 33584, N'Armor', N'NormalEquipment', N'Female', 40, 0, 26700, 115000, 2, N'Assassin', 97, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Umbra Coat', N'', 0, 0, 82, 0, 0, 0, 0, 0, 0, 10, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (19, 242, 34384, N'Armor', N'NormalEquipment', N'Male', 44, 0, 33000, 200000, 2, N'Assassin', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Bardocle', N'', 0, 0, 88, 0, 0, 0, 0, 0, 0, 10, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (20, 245, 34412, N'Armor', N'NormalEquipment', N'Female', 44, 0, 33000, 200000, 2, N'Assassin', 110, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kagum', N'', 0, 0, 88, 0, 0, 0, 0, 0, 0, 10, 0, 0)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (21, 159, 33633, N'Armor', N'NormalEquipment', N'Male', 25, 0, 42000, 520000, 2, N'Assassin', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Yoroi of Masakado', N'', 750, 750, 96, 2, 0, 0, 4, 5, 40, 15, 10, 20)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (22, 159, 33638, N'Armor', N'NormalEquipment', N'Female', 25, 0, 42000, 520000, 2, N'Assassin', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Kunoichi of Tomoe', N'', 750, 750, 96, 2, 0, 0, 4, 5, 40, 15, 10, 20)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (23, 177, 33751, N'Armor', N'NormalEquipment', N'Male', 27, 0, 55000, 1000000, 2, N'Assassin', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Dunmharfoir', N'', 3000, 2000, 102, 2, 0, 0, 4, 9, 40, 20, 15, 30)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (24, 177, 33741, N'Armor', N'NormalEquipment', N'Female', 27, 0, 55000, 1000000, 2, N'Assassin', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Arenhare''ko wa', N'', 3000, 2000, 102, 2, 0, 0, 4, 9, 40, 20, 15, 30)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (25, 124, 33050, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 42000, 500000, 4, N'Assassin', 135, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Shadow Mask', N'', 300, 700, 3, 0, 2, 2, 0, 3, 15, 15, 20, 25)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (26, 165, 33771, N'Helmet', N'NormalEquipment', N'Male', 3, 0, 55000, 800000, 4, N'Assassin', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Shadow Headband', N'', 600, 1300, 4, 0, 4, 4, 0, 4, 20, 20, 25, 25)
INSERT [dbo].[ArmorAssassin] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (27, 165, 33761, N'Helmet', N'NormalEquipment', N'Female', 3, 0, 55000, 800000, 4, N'Assassin', 150, CAST(1.00 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Shadow Scarf', N'', 600, 1300, 4, 0, 4, 4, 0, 4, 20, 20, 25, 25)
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorAssassin] ADD  DEFAULT ((0)) FOR [Regen]
GO
