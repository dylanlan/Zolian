USE [Zolian]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Regen__18E19391]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGeneri__Dmg__17ED6F58]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGeneri__Hit__16F94B1F]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Magic__160526E6]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Dexte__151102AD]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Const__141CDE74]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Wisdo__1328BA3B]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Intel__12349602]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Stren__114071C9]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Armor__104C4D90]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGeneric__MP__0F582957]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGeneric__HP__0E64051E]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Color__0D6FE0E5]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Stage__0C7BBCAC]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__DropR__0B879873]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Level__0A93743A]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Class__099F5001]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Worth__08AB2BC8]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Encha__07B7078F]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Carry__06C2E356]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Flags__05CEBF1D]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Displ__04DA9AE4]
GO
ALTER TABLE [dbo].[ArmorGeneric] DROP CONSTRAINT [DF__ArmorGene__Image__03E676AB]
GO
/****** Object:  Table [dbo].[ArmorGeneric]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArmorGeneric]') AND type in (N'U'))
DROP TABLE [dbo].[ArmorGeneric]
GO
/****** Object:  Table [dbo].[ArmorGeneric]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmorGeneric](
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
ALTER TABLE [dbo].[ArmorGeneric] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (1, 220, 33304, N'Helmet', N'NormalEquipment', N'Both', 2, 0, 6000, 10000, 4, N'Peasant', 41, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Mushroom Cap', N'', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (2, 105, 36131, N'Armor', N'NormalEquipment', N'Both', 10, 0, 24000, 300000, 2, N'Peasant', 71, CAST(1.00 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Dark Robes', N'', 0, 4000, 15, 0, 5, 5, 0, 0, 20, 10, 5, 10)
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (3, 103, 36131, N'Armor', N'NormalEquipment', N'Both', 10, 0, 24000, 300000, 2, N'Peasant', 71, CAST(1.00 AS Decimal(3, 2)), N'Forsaken', 0, N'Lavender', N'', N'Light Robes', N'', 0, 4000, 15, 0, 5, 5, 0, 0, 20, 10, 5, 10)
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (4, 1, 32864, N'Armor', N'NormalEquipment', N'Male', 0, 0, 1000, 0, 2, N'Peasant', 0, CAST(1.00 AS Decimal(3, 2)), N'Class', 1, N'Lavender', N'', N'Peasant Attire', N'', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (5, 1, 32883, N'Armor', N'NormalEquipment', N'Female', 0, 0, 1000, 0, 2, N'Peasant', 0, CAST(1.00 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Blouse', N'', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ArmorGeneric] ([ArmorId], [Image], [DisplayImage], [ScriptName], [Flags], [Gender], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [Class], [LevelRequired], [DropRate], [StageRequired], [HasPants], [Color], [ArmorScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen]) VALUES (6, 129, 33299, N'Helmet', N'NormalEquipment', N'Both', 3, 0, 15000, 25000, 4, N'Peasant', 60, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Goblin Helm', N'', 100, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0)
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[ArmorGeneric] ADD  DEFAULT ((0)) FOR [Regen]
GO
