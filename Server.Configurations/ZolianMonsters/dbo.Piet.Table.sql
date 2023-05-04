USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__Level__511AFFBC]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__CastSpeed__4E3E9311]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__AttackSpee__4D4A6ED8]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__IgnoreColl__4A6E022D]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__EngagedSpe__4C564A9F]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__MovementSp__4B622666]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__SpawnRate__4979DDF4]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__SpawnMax__4885B9BB]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__SpawnSize__47919582]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__DefenseEle__5026DB83]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__OffenseEle__4F32B74A]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__DefinedY__469D7149]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__DefinedX__45A94D10]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__ImageVaria__44B528D7]
GO
ALTER TABLE [dbo].[Piet] DROP CONSTRAINT [DF__Piet__Image__43C1049E]
GO
/****** Object:  Table [dbo].[Piet]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Piet]') AND type in (N'U'))
DROP TABLE [dbo].[Piet]
GO
/****** Object:  Table [dbo].[Piet]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piet](
	[MonsterId] [int] NOT NULL,
	[DropOne] [varchar](20) NULL,
	[DropTwo] [varchar](20) NULL,
	[DropThree] [varchar](20) NULL,
	[DropFour] [varchar](20) NULL,
	[ScriptName] [varchar](20) NOT NULL,
	[BaseName] [varchar](30) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Type] [varchar](8) NOT NULL,
	[MonType] [varchar](20) NULL,
	[AreaId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[ImageVariance] [int] NOT NULL,
	[SpawnType] [varchar](10) NOT NULL,
	[DefinedX] [int] NOT NULL,
	[DefinedY] [int] NOT NULL,
	[ElementType] [varchar](10) NOT NULL,
	[OffenseElement] [varchar](8) NOT NULL,
	[DefenseElement] [varchar](8) NOT NULL,
	[SpawnSize] [int] NOT NULL,
	[SpawnMax] [int] NOT NULL,
	[SpawnRate] [int] NOT NULL,
	[Mood] [varchar](15) NOT NULL,
	[MovementSpeed] [int] NOT NULL,
	[EngagedSpeed] [int] NOT NULL,
	[PathFinder] [varchar](10) NOT NULL,
	[IgnoreCollision] [bit] NOT NULL,
	[WayPointOne] [varchar](7) NULL,
	[WayPointTwo] [varchar](7) NULL,
	[WayPointThree] [varchar](7) NULL,
	[WayPointFour] [varchar](7) NULL,
	[WayPointFive] [varchar](7) NULL,
	[AttackSpeed] [int] NOT NULL,
	[CastSpeed] [int] NOT NULL,
	[LootType] [varchar](15) NOT NULL,
	[Level] [int] NOT NULL,
	[AssailOne] [varchar](20) NULL,
	[AssailTwo] [varchar](20) NULL,
	[AssailThree] [varchar](20) NULL,
	[AssailFour] [varchar](20) NULL,
	[AssailFive] [varchar](20) NULL,
	[SpellOne] [varchar](20) NULL,
	[SpellTwo] [varchar](20) NULL,
	[SpellThree] [varchar](20) NULL,
	[SpellFour] [varchar](20) NULL,
	[SpellFive] [varchar](20) NULL,
	[AbilityOne] [varchar](20) NULL,
	[AbilityTwo] [varchar](20) NULL,
	[AbilityThree] [varchar](20) NULL,
	[AbilityFour] [varchar](20) NULL,
	[AbilityFive] [varchar](20) NULL,
 CONSTRAINT [PK__Piet__DC15402631BB3C56] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Piet] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'Frog''s Leg', N'', N'', N'', N'Common Monster', N'Frog', N'Frog1', N'Physical', N'Aquatic', 187, 16484, 0, N'Random', 0, 0, N'Random', N'None', N'None', 2, 4, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 12000, N'Random', 15, N'Assail', N'Assault', N'', N'', N'', N'Beag Cradh', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Piet] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'Crab''s Claw', N'', N'', N'', N'Common Monster', N'Crab', N'Crab1', N'GodlyDex', N'Aquatic', 187, 16483, 0, N'Random', 0, 0, N'Random', N'None', N'None', 2, 2, 1, N'Aggressive', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 12000, N'Random', 16, N'Assail', N'Onslaught', N'', N'', N'', N'Beag Cradh', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__Image__43C1049E]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__ImageVaria__44B528D7]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__DefinedX__45A94D10]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__DefinedY__469D7149]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__OffenseEle__4F32B74A]  DEFAULT ('None') FOR [OffenseElement]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__DefenseEle__5026DB83]  DEFAULT ('None') FOR [DefenseElement]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__SpawnSize__47919582]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__SpawnMax__4885B9BB]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__SpawnRate__4979DDF4]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__MovementSp__4B622666]  DEFAULT ((2000)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__EngagedSpe__4C564A9F]  DEFAULT ((1500)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__IgnoreColl__4A6E022D]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__AttackSpee__4D4A6ED8]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__CastSpeed__4E3E9311]  DEFAULT ((10000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[Piet] ADD  CONSTRAINT [DF__Piet__Level__511AFFBC]  DEFAULT ((1)) FOR [Level]
GO
