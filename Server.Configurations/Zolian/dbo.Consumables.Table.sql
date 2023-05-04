USE [Zolian]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Color__2057CCD0]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Stage__1F63A897]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__DropR__1E6F845E]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Level__1D7B6025]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Class__1C873BEC]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Worth__1B9317B3]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Carry__1A9EF37A]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Flags__19AACF41]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Displ__18B6AB08]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__Image__17C286CF]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__MaxSt__16CE6296]
GO
ALTER TABLE [dbo].[Consumables] DROP CONSTRAINT [DF__Consumabl__CanSt__15DA3E5D]
GO
/****** Object:  Table [dbo].[Consumables]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Consumables]') AND type in (N'U'))
DROP TABLE [dbo].[Consumables]
GO
/****** Object:  Table [dbo].[Consumables]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumables](
	[Id] [int] NOT NULL,
	[CanStack] [bit] NOT NULL,
	[MaxStack] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](35) NOT NULL,
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
ALTER TABLE [dbo].[Consumables] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 1, 13, 32808, 32808, N'Potion', N'NormalConsumable', 0, 100, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Apple', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 1, 6, 68, 32836, N'Potion', N'NormalConsumable', 1, 80, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Baguette', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 1, 6, 32803, 32803, N'Potion', N'NormalConsumable', 0, 240, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Beef', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 1, 9, 608, 33376, N'Potion', N'NormalConsumable', 2, 800, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Carafe', N'Spirits')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 1, 100, 34975, 34975, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.25 AS Decimal(3, 2)), N'Class', N'Lavender', N'Carrot', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 1, 30, 32810, 32810, N'Potion', N'NormalConsumable', 0, 180, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Cherries', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 1, 30, 32804, 32804, N'Potion', N'NormalConsumable', 0, 180, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chicken', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 1, 100, 34976, 34976, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.40 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ginger', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 1, 10, 2100, 34868, N'Potion', N'NormalConsumable', 1, 300, N'', N'Peasant', 11, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Honey Bacon Burger', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 1, 13, 35023, 35023, N'Potion', N'NormalConsumable', 0, 300, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Juicy Apple', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 1, 30, 35006, 35006, N'Potion', N'NormalConsumable', 0, 180, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Juicy Grapes', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (12, 1, 100, 34977, 34977, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Lavender', N'Leeks', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (13, 1, 21, 32847, 32847, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mead', N'Spirits')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (14, 1, 50, 33106, 33106, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mold', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (15, 1, 8, 2198, 34966, N'Potion', N'NormalConsumable', 0, 400, N'', N'Peasant', 1, CAST(0.60 AS Decimal(3, 2)), N'Class', N'Lavender', N'Pizza Slice', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (16, 1, 30, 34297, 34297, N'Potion', N'NormalConsumable', 0, 1500, N'', N'Peasant', 25, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'Poisonous Tentacle', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (17, 1, 20, 32811, 32811, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.24 AS Decimal(3, 2)), N'Class', N'Lavender', N'Rotten Veggies', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (18, 1, 30, 32810, 32810, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spoiled Cherries', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (19, 1, 30, 32809, 32809, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.40 AS Decimal(3, 2)), N'Class', N'Lavender', N'Spoiled Grapes', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (20, 1, 21, 32847, 32847, N'Potion', N'NormalConsumable', 0, 800, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Strong Mead', N'Spirits')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (21, 1, 50, 85, 32853, N'Potion', N'NormalConsumable', 0, 0, N'', N'Peasant', 1, CAST(0.20 AS Decimal(3, 2)), N'Class', N'Lavender', N'Tomato', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (22, 1, 21, 32807, 32807, N'Potion', N'NormalConsumable', 1, 400, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Wine', N'Spirits')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (23, 1, 30, 569, 33337, N'Potion', N'NormalConsumable', 0, 2500, N'', N'Peasant', 35, CAST(0.30 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mushroom', N'Food')
INSERT [dbo].[Consumables] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (24, 0, 1, 2420, 35188, N'Consumable', N'DropScriptConsumable', 0, 0, N'', N'Cleric', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Cleric''s Feather', N'Skill')
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Consumables] ADD  DEFAULT ((0)) FOR [Color]
GO
