USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Level__4BAC3F29]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__CastSp__47DBAE45]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Attack__46E78A0C]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Ignore__440B1D61]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Engage__45F365D3]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Moveme__44FF419A]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__SpawnR__4316F928]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__SpawnM__4222D4EF]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__SpawnS__412EB0B6]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Defens__49C3F6B7]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Offens__48CFD27E]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Define__403A8C7D]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Define__3F466844]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__ImageV__3E52440B]
GO
ALTER TABLE [dbo].[GMIsland] DROP CONSTRAINT [DF__GMIsland__Image__3D5E1FD2]
GO
/****** Object:  Table [dbo].[GMIsland]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GMIsland]') AND type in (N'U'))
DROP TABLE [dbo].[GMIsland]
GO
/****** Object:  Table [dbo].[GMIsland]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMIsland](
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
 CONSTRAINT [PK__GMIsland__DC15402617C41F10] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GMIsland] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM A', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 5, 14, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM B', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 5, 12, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 5, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (3, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM C', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 5, 10, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 10, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (4, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM D', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 5, 8, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 15, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (5, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM E', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 5, 6, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 20, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (6, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM F', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 9, 6, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 30, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (7, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM G', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 9, 8, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 40, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (8, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM H', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 9, 10, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 50, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (9, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM I', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 9, 12, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 60, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (10, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM J', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 9, 14, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 70, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (11, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM K', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 13, 14, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 85, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (12, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM L', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 13, 12, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 90, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (13, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM M', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 13, 10, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 95, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (14, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM N', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 13, 8, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 99, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[GMIsland] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (15, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy GM O', N'None', N'Dummy', 44529, 17020, 0, N'Defined', 13, 6, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 99, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Image__3D5E1FD2]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__ImageV__3E52440B]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Define__3F466844]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Define__403A8C7D]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Offens__48CFD27E]  DEFAULT ((0)) FOR [OffenseElement]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Defens__49C3F6B7]  DEFAULT ((0)) FOR [DefenseElement]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__SpawnS__412EB0B6]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__SpawnM__4222D4EF]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__SpawnR__4316F928]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Moveme__44FF419A]  DEFAULT ((1800)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Engage__45F365D3]  DEFAULT ((900)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Ignore__440B1D61]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Attack__46E78A0C]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__CastSp__47DBAE45]  DEFAULT ((5000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[GMIsland] ADD  CONSTRAINT [DF__GMIsland__Level__4BAC3F29]  DEFAULT ((1)) FOR [Level]
GO
