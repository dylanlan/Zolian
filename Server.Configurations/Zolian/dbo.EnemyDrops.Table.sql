USE [Zolian]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Color__17F790F9]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Stage__17036CC0]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__DropR__160F4887]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Level__151B244E]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Class__14270015]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Worth__1332DBDC]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Carry__123EB7A3]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Flags__114A936A]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Displ__10566F31]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__Image__0F624AF8]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__MaxSt__0E6E26BF]
GO
ALTER TABLE [dbo].[EnemyDrops] DROP CONSTRAINT [DF__EnemyDrop__CanSt__0D7A0286]
GO
/****** Object:  Table [dbo].[EnemyDrops]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnemyDrops]') AND type in (N'U'))
DROP TABLE [dbo].[EnemyDrops]
GO
/****** Object:  Table [dbo].[EnemyDrops]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnemyDrops](
	[Id] [int] NOT NULL,
	[CanStack] [bit] NOT NULL,
	[MaxStack] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](20) NOT NULL,
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
ALTER TABLE [dbo].[EnemyDrops] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 1, 3, 326, 33094, N'', N'NormalMonsterDrop', 1, 600, N'', N'Peasant', 1, CAST(0.75 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bat Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 1, 10, 329, 33097, N'Potion', N'NormalConsumable', 1, 800, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bee Honey', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 1, 10, 331, 33099, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.75 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bee Wax', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 1, 25, 555, 33323, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bee Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 1, 25, 327, 33095, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bee Sting', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 1, 12, 318, 33086, N'', N'NormalMonsterDrop', 0, 500, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Branch', N'Misc')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 1, 10, 33095, 33095, N'', N'NormalMonsterDrop', 1, 500, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Centipede Gland', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 0, 0, 45819, 45819, N'', N'Trap', 0, 0, N'', N'Peasant', 99, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Dark Rank', N'')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 1, 3, 556, 33324, N'', N'NormalMonsterDrop', 2, 100000, N'', N'Peasant', 50, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Fairy Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 1, 10, 340, 33108, N'', N'NormalMonsterDrop', 1, 2000, N'', N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Goblin Skull', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 1, 3, 326, 33094, N'', N'NormalMonsterDrop', 1, 3000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'Great Bat Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (12, 1, 10, 340, 33108, N'', N'NormalMonsterDrop', 2, 5000, N'', N'Peasant', 25, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Hobgoblin Skull', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (13, 1, 1, 1075, 33843, N'', N'NormalMonsterDrop', 0, 75000, N'', N'Peasant', 75, CAST(0.01 AS Decimal(3, 2)), N'Class', N'Lavender', N'Human Remains', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (14, 1, 15, 346, 33114, N'', N'NormalMonsterDrop', 1, 12000, N'', N'Peasant', 25, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'Kardi Fur', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (15, 1, 10, 8135, 40903, N'', N'NormalMonsterDrop', 1, 300, N'', N'Peasant', 1, CAST(0.75 AS Decimal(3, 2)), N'Class', N'Lavender', N'Killer Bee Corpse', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (16, 0, 0, 340, 33108, N'', N'NormalMonsterDrop', 1, 2400, N'', N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Kobold Skull', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (17, 1, 20, 335, 33103, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.75 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mantis Eye', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (18, 1, 3, 339, 33107, N'', N'NormalMonsterDrop', 1, 15000, N'', N'Peasant', 1, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Marauder Spine', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (19, 1, 3, 333, 33101, N'', N'NormalMonsterDrop', 1, 10000, N'', N'Peasant', 1, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mimic Fang', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (20, 1, 10, 331, 33099, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.90 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Wax', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (21, 1, 10, 331, 33099, N'', N'NormalMonsterDrop', 0, 800, N'', N'Peasant', 1, CAST(0.75 AS Decimal(3, 2)), N'Class', N'Lavender', N'Royal Wax', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (22, 1, 10, 563, 33331, N'', N'NormalMonsterDrop', 1, 10000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'Scorpion Claw', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (23, 1, 10, 564, 33332, N'', N'NormalMonsterDrop', 1, 5000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'Scorpion Sting', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (24, 1, 10, 32818, 32818, N'', N'NormalMonsterDrop', 1, 10000, N'', N'Peasant', 1, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'Scorpion Venom', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (25, 1, 20, 335, 33103, N'', N'NormalMonsterDrop', 0, 300, N'', N'Peasant', 1, CAST(0.18 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spider Eye', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (26, 1, 20, 560, 33328, N'', N'NormalMonsterDrop', 0, 600, N'', N'Peasant', 1, CAST(0.24 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spider Leg', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (27, 1, 20, 343, 33111, N'', N'NormalMonsterDrop', 0, 800, N'', N'Peasant', 1, CAST(0.23 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spider Silk', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (28, 1, 30, 341, 33109, N'', N'NormalMonsterDrop', 0, 0, N'', N'Peasant', 75, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Succubus Hair', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (29, 1, 10, 327, 33095, N'', N'NormalMonsterDrop', 0, 200, N'', N'Peasant', 1, CAST(0.67 AS Decimal(3, 2)), N'Class', N'Lavender', N'Viper Gland', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (30, 1, 15, 555, 33323, N'', N'NormalMonsterDrop', 1, 2000, N'', N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wasp Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (31, 1, 32, 333, 33101, N'', N'NormalMonsterDrop', 0, 50000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'White Bat Fangs', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (32, 1, 15, 326, 33094, N'', N'NormalMonsterDrop', 1, 20000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'White Bat Wing', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (33, 1, 10, 348, 33116, N'', N'NormalMonsterDrop', 0, 1000, N'', N'Peasant', 6, CAST(0.40 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wolf Fur', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (34, 1, 32, 333, 33101, N'', N'NormalMonsterDrop', 0, 15000, N'', N'Peasant', 10, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wolf Teeth', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (35, 1, 25, 342, 33110, N'', N'NormalMonsterDrop', 0, 13000, N'', N'Peasant', 1, CAST(0.35 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wolf Lock', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (36, 1, 10, 324, 33092, N'', N'NormalMonsterDrop', 1, 600, N'', N'Peasant', 6, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wolf Skin', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (37, 1, 10, 2252, 35020, N'', N'NormalMonsterDrop', 1, 95000, N'', N'Peasant', 60, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wraith Blood', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (38, 1, 10, 567, 33335, N'', N'NormalMonsterDrop', 1, 15000, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Leech''s Tail', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (39, 1, 10, 562, 33330, N'', N'NormalMonsterDrop', 1, 20000, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Goo', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (40, 1, 10, 13652, 46420, N'', N'NormalMonsterDrop', 1, 17000, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Slime', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (41, 1, 10, 571, 33339, N'', N'NormalMonsterDrop', 1, 16500, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spore Sac', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (42, 1, 10, 570, 33338, N'', N'NormalMonsterDrop', 1, 50000, N'', N'Peasant', 1, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Polyp Sac', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (43, 0, 1, 534, 33302, N'', N'NormalMonsterDrop', 2, 75000, N'', N'Peasant', 1, CAST(0.18 AS Decimal(3, 2)), N'Class', N'Lavender', N'Goblin Shoulderpads', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (44, 0, 1, 535, 33303, N'', N'NormalMonsterDrop', 5, 140000, N'', N'Peasant', 1, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Goblin Full Plate', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (45, 1, 100, 2329, 35097, N'', N'NormalMonsterDrop', 0, 80000, N'', N'Peasant', 1, CAST(0.24 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wisp Dust', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (46, 1, 100, 8143, 40911, N'', N'NormalMonsterDrop', 0, 1000, N'', N'Peasant', 1, CAST(0.50 AS Decimal(3, 2)), N'Class', N'Lavender', N'Bot Fly Corpse', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (47, 1, 100, 1401, 34169, N'', N'NormalMonsterDrop', 0, 50000, N'', N'Peasant', 1, CAST(0.10 AS Decimal(3, 2)), N'Class', N'Lavender', N'Lich Wraps', N'Enemy')
INSERT [dbo].[EnemyDrops] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (48, 1, 30, 344, 33112, N'', N'NormalMonsterDrop', 0, 70000, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Succibi Hair', N'Enemy')
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[EnemyDrops] ADD  DEFAULT ((0)) FOR [Color]
GO
