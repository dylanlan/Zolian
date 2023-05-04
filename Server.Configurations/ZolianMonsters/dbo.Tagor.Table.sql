USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__Level__63C3BFDC]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__CastSpeed__62CF9BA3]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__AttackSpe__61DB776A]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__IgnoreCol__60E75331]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__EngagedSp__5FF32EF8]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__MovementS__5EFF0ABF]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__SpawnRate__5E0AE686]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__SpawnMax__5D16C24D]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__SpawnSize__5C229E14]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__DefenseEl__5B2E79DB]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__OffenseEl__5A3A55A2]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__DefinedY__59463169]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__DefinedX__58520D30]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__ImageVari__575DE8F7]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__Image__5669C4BE]
GO
/****** Object:  Table [dbo].[Tagor]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tagor]') AND type in (N'U'))
DROP TABLE [dbo].[Tagor]
GO
/****** Object:  Table [dbo].[Tagor]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tagor](
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
 CONSTRAINT [PK__Tagor__DC154026F61B3652] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor A', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 13, 22, N'Defined', N'None', N'Water', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 75, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor B', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 22, 13, N'Defined', N'None', N'Fire', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 75, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (3, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor C', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 13, 13, N'Defined', N'None', N'Wind', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 75, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (4, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor D', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 22, 22, N'Defined', N'None', N'Earth', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 75, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (5, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor E', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 16, 19, N'Defined', N'None', N'Terror', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 150, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (6, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor F', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 19, 16, N'Defined', N'None', N'Sorrow', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 150, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (7, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor G', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 16, 16, N'Defined', N'None', N'Rage', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 150, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tagor] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (8, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tagor H', N'None', N'Dummy', 5257, 17020, 0, N'Defined', 19, 19, N'Defined', N'None', N'Void', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 250, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__Image__5669C4BE]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__ImageVari__575DE8F7]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__DefinedX__58520D30]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__DefinedY__59463169]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__OffenseEl__5A3A55A2]  DEFAULT ('None') FOR [OffenseElement]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__DefenseEl__5B2E79DB]  DEFAULT ('None') FOR [DefenseElement]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__SpawnSize__5C229E14]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__SpawnMax__5D16C24D]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__SpawnRate__5E0AE686]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__MovementS__5EFF0ABF]  DEFAULT ((2000)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__EngagedSp__5FF32EF8]  DEFAULT ((1500)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__IgnoreCol__60E75331]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__AttackSpe__61DB776A]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__CastSpeed__62CF9BA3]  DEFAULT ((10000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[Tagor] ADD  CONSTRAINT [DF__Tagor__Level__63C3BFDC]  DEFAULT ((1)) FOR [Level]
GO
