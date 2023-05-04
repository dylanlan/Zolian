USE [Zolian]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Color__2BDF596C]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__StageRe__2AEB3533]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__DropRat__29F710FA]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__LevelRe__2902ECC1]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Class__280EC888]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Worth__271AA44F]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__CarryWe__26268016]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Flags__25325BDD]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Display__243E37A4]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__Image__234A136B]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__MaxStac__2255EF32]
GO
ALTER TABLE [dbo].[Potions] DROP CONSTRAINT [DF__Potions__CanStac__2161CAF9]
GO
/****** Object:  Table [dbo].[Potions]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Potions]') AND type in (N'U'))
DROP TABLE [dbo].[Potions]
GO
/****** Object:  Table [dbo].[Potions]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Potions](
	[Id] [int] NOT NULL,
	[CanStack] [bit] NOT NULL,
	[MaxStack] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](30) NOT NULL,
	[CarryWeight] [int] NOT NULL,
	[Worth] [int] NOT NULL,
	[NpcKey] [varchar](20) NULL,
	[Class] [varchar](12) NOT NULL,
	[LevelRequired] [int] NOT NULL,
	[DropRate] [decimal](3, 2) NOT NULL,
	[StageRequired] [varchar](12) NOT NULL,
	[Color] [varchar](15) NOT NULL,
	[Name] [varchar](30) NULL,
	[GroupIn] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Potions] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 1, 100, 44, 32812, N'Potion', N'NormalConsumable', 0, 50000, N'', N'Peasant', 1, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ard Ioc Deum', N'Health')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 1, 100, 46, 32814, N'Potion', N'NormalConsumable', 0, 5000, N'', N'Peasant', 1, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ioc Deum', N'Health')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 1, 100, 48, 32816, N'Potion', N'NormalConsumable', 0, 15000, N'', N'Peasant', 1, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mor Ioc Deum', N'Health')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 1, 100, 2343, 35111, N'Potion', N'NormalConsumable', 0, 3000, N'', N'Peasant', 1, CAST(0.09 AS Decimal(3, 2)), N'Class', N'Lavender', N'Minor Ao Puinsein Deum', N'Cures')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 1, 100, 2342, 35110, N'Potion', N'NormalConsumable', 0, 8000, N'', N'Peasant', 1, CAST(0.06 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ao Puinsein Deum', N'Cures')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 1, 100, 2286, 35054, N'Potion', N'NormalConsumable', 0, 16000, N'', N'Peasant', 1, CAST(0.03 AS Decimal(3, 2)), N'Class', N'Lavender', N'Major Ao Puinsein Deum', N'Cures')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 1, 100, 1224, 33992, N'Potion', N'NormalConsumable', 0, 250000, N'', N'Peasant', 1, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Elixir of Life', N'Health')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 1, 50, 1224, 33992, N'Potion', N'NormalConsumable', 0, 180000, N'', N'Peasant', 1, CAST(0.02 AS Decimal(3, 2)), N'Class', N'Lavender', N'Draconic Vitality', N'Health')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 1, 20, 1224, 33992, N'Potion', N'NormalConsumable', 0, 120000, N'', N'Peasant', 1, CAST(0.07 AS Decimal(3, 2)), N'Class', N'Lavender', N'Goblin Brew', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 1, 100, 1224, 33992, N'Potion', N'NormalConsumable', 0, 24000, N'', N'Peasant', 1, CAST(0.01 AS Decimal(3, 2)), N'Class', N'Lavender', N'Elemental Essence', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 1, 10, 1224, 33992, N'Potion', N'NormalConsumable', 0, 100000, N'', N'Peasant', 1, CAST(0.04 AS Decimal(3, 2)), N'Class', N'Lavender', N'Orcish Strength', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (12, 1, 50, 1224, 33992, N'Potion', N'NormalConsumable', 0, 26000, N'', N'Peasant', 1, CAST(0.08 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mystic Clarity', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (13, 1, 20, 1224, 33992, N'Potion', N'NormalConsumable', 0, 48000, N'', N'Peasant', 1, CAST(0.03 AS Decimal(3, 2)), N'Class', N'Lavender', N'Feywild Nectar', N'Mana')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (14, 1, 10, 1224, 33992, N'Potion', N'NormalConsumable', 0, 70000, N'', N'Peasant', 1, CAST(0.06 AS Decimal(3, 2)), N'Class', N'Lavender', N'Phoenix Fire', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (15, 1, 100, 1224, 33992, N'Potion', N'NormalConsumable', 0, 22000, N'', N'Peasant', 1, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Vial of Shadows', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (16, 1, 50, 1224, 33992, N'Potion', N'NormalConsumable', 0, 14000, N'', N'Peasant', 1, CAST(0.02 AS Decimal(3, 2)), N'Class', N'Lavender', N'Gleaming Draught', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (17, 1, 20, 1224, 33992, N'Potion', N'NormalConsumable', 0, 36000, N'', N'Peasant', 1, CAST(0.07 AS Decimal(3, 2)), N'Class', N'Lavender', N'Darkmoon Elixir', N'Mana')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (18, 1, 10, 1224, 33992, N'Potion', N'NormalConsumable', 0, 90000, N'', N'Peasant', 1, CAST(0.01 AS Decimal(3, 2)), N'Class', N'Lavender', N'Celestial Resonance', N'Mana')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (19, 1, 100, 1224, 33992, N'Potion', N'NormalConsumable', 0, 200000, N'', N'Peasant', 1, CAST(0.04 AS Decimal(3, 2)), N'Class', N'Lavender', N'Astral Quicksilver', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (20, 1, 50, 1224, 33992, N'Potion', N'NormalConsumable', 0, 56000, N'', N'Peasant', 1, CAST(0.08 AS Decimal(3, 2)), N'Class', N'Lavender', N'Tide of Dreams', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (21, 1, 20, 1224, 33992, N'Potion', N'NormalConsumable', 0, 42000, N'', N'Peasant', 1, CAST(0.03 AS Decimal(3, 2)), N'Class', N'Lavender', N'Griffin''s Grace', N'Enhance')
INSERT [dbo].[Potions] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (22, 1, 10, 1224, 33992, N'Potion', N'NormalConsumable', 0, 78000, N'', N'Peasant', 1, CAST(0.06 AS Decimal(3, 2)), N'Class', N'Lavender', N'Serpent''s Cunning', N'Enhance')
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Potions] ADD  DEFAULT ((0)) FOR [Color]
GO
