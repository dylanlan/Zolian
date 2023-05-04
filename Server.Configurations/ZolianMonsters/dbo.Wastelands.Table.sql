USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Level__793DFFAF]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__CastS__756D6ECB]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Attac__74794A92]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Ignor__719CDDE7]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Engag__73852659]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Movem__72910220]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Spawn__70A8B9AE]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Spawn__6FB49575]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Spawn__6EC0713C]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Defen__7755B73D]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Offen__76619304]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Defin__6DCC4D03]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Defin__6CD828CA]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Image__6BE40491]
GO
ALTER TABLE [dbo].[Wastelands] DROP CONSTRAINT [DF__Wasteland__Image__6AEFE058]
GO
/****** Object:  Table [dbo].[Wastelands]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wastelands]') AND type in (N'U'))
DROP TABLE [dbo].[Wastelands]
GO
/****** Object:  Table [dbo].[Wastelands]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wastelands](
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
 CONSTRAINT [PK__Wastelan__DC154026D5874981] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wastelands] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Wastelands] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'Raw Wax', N'Bee Sting', N'', N'', N'Common Monster', N'Bee', N'WastelandBee', N'None', N'Insect', 623, 16385, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 30, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1300, 12000, N'Random', 2, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Wastelands] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'Mantis Eye', N'Oak Stick', N'', N'', N'Common Monster', N'Mantis', N'WastelandMantis', N'None', N'Insect', 623, 16471, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 30, 1, N'Aggressive', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 12000, N'Random', 3, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Wastelands] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (3, N'Viper Gland', N'', N'', N'', N'Common Monster', N'Viper', N'WastelandViper', N'None', N'Reptile', 623, 16433, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 30, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1300, 12000, N'Random', 1, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Wastelands] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (4, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Wasteland A', N'None', N'Dummy', 623, 17020, 0, N'Defined', 1, 56, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Wastelands] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (5, N'', N'', N'', N'', N'Training Dummy', N'Training Dummy', N'Training Dummy Wasteland B', N'None', N'Dummy', 623, 17020, 0, N'Defined', 1, 58, N'None', N'None', N'None', 0, 1, 1, N'Neutral', 1000, 1000, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 8000, N'Table, Gold', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Image__6AEFE058]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Image__6BE40491]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Defin__6CD828CA]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Defin__6DCC4D03]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Offen__76619304]  DEFAULT ((0)) FOR [OffenseElement]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Defen__7755B73D]  DEFAULT ((0)) FOR [DefenseElement]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Spawn__6EC0713C]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Spawn__6FB49575]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Spawn__70A8B9AE]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Movem__72910220]  DEFAULT ((1800)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Engag__73852659]  DEFAULT ((900)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Ignor__719CDDE7]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Attac__74794A92]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__CastS__756D6ECB]  DEFAULT ((5000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[Wastelands] ADD  CONSTRAINT [DF__Wasteland__Level__793DFFAF]  DEFAULT ((1)) FOR [Level]
GO
