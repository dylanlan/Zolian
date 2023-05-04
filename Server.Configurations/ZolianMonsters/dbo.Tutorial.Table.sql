USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Level__2AD55B43]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__CastSp__2704CA5F]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Attack__2610A626]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Ignore__2334397B]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Engage__251C81ED]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Moveme__24285DB4]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__SpawnR__22401542]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__SpawnM__214BF109]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__SpawnS__2057CCD0]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Defens__28ED12D1]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Offens__27F8EE98]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Define__1F63A897]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Define__1E6F845E]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__ImageV__1D7B6025]
GO
ALTER TABLE [dbo].[Tutorial] DROP CONSTRAINT [DF__Tutorial__Image__1C873BEC]
GO
/****** Object:  Table [dbo].[Tutorial]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutorial]') AND type in (N'U'))
DROP TABLE [dbo].[Tutorial]
GO
/****** Object:  Table [dbo].[Tutorial]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutorial](
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
 CONSTRAINT [PK__Tutorial__DC154026BAE0FADF] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tutorial] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tut A', N'None', N'Dummy', 3029, 16517, 0, N'Defined', 28, 24, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 2, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Tut B', N'None', N'Dummy', 3029, 16517, 0, N'Defined', 26, 24, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (3, N'Carrot', N'Leeks', N'Ginger', N'', N'Common Monster', N'Green Floppy', N'Tut - Floppy Green', N'None', N'Beast', 3029, 16644, 0, N'Random', 0, 0, N'None', N'None', N'None', 1, 5, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 2500, N'Random', 1, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (4, N'Carrot', N'Leeks', N'Ginger', N'', N'Common Monster', N'Pink Floppy', N'Tut - Floppy Pink', N'None', N'Beast', 3029, 16643, 0, N'Random', 0, 0, N'None', N'None', N'None', 1, 5, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 2500, N'Random', 1, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (5, N'Carrot', N'Leeks', N'Ginger', N'', N'Common Monster', N'Floppy', N'Tut - Floppy White', N'None', N'Beast', 3029, 16646, 0, N'Random', 0, 0, N'None', N'None', N'None', 1, 5, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 2500, N'Random', 1, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (6, N'Carrot', N'Leeks', N'Ginger', N'', N'Common Monster', N'Yellow Floppy', N'Tut - Floppy Yellow', N'None', N'Beast', 3029, 16642, 0, N'Random', 0, 0, N'None', N'None', N'None', 1, 5, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 2500, N'Random', 1, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Tutorial] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (7, N'Apple', N'Mantis Eye', N'Strong Stick', N'', N'Common Monster', N'Young Mantis', N'Tut - Mantis', N'None', N'Beast', 3029, 16656, 0, N'Random', 0, 0, N'None', N'None', N'None', 1, 3, 1, N'Aggressive', 2000, 1200, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Random', 2, N'Wallop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Image__1C873BEC]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__ImageV__1D7B6025]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Define__1E6F845E]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Define__1F63A897]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Offens__27F8EE98]  DEFAULT ((0)) FOR [OffenseElement]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Defens__28ED12D1]  DEFAULT ((0)) FOR [DefenseElement]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__SpawnS__2057CCD0]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__SpawnM__214BF109]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__SpawnR__22401542]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Moveme__24285DB4]  DEFAULT ((1800)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Engage__251C81ED]  DEFAULT ((900)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Ignore__2334397B]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Attack__2610A626]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__CastSp__2704CA5F]  DEFAULT ((5000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[Tutorial] ADD  CONSTRAINT [DF__Tutorial__Level__2AD55B43]  DEFAULT ((1)) FOR [Level]
GO
