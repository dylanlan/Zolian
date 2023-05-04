USE [ZolianMonsters]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Level__7D439ABD]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__CastS__797309D9]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Attac__787EE5A0]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Ignor__75A278F5]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Engag__778AC167]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Movem__76969D2E]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Spawn__74AE54BC]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Spawn__73BA3083]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Spawn__72C60C4A]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Defen__7B5B524B]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Offen__7A672E12]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Defin__71D1E811]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Defin__70DDC3D8]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Image__6FE99F9F]
GO
ALTER TABLE [dbo].[EnchantedGarden] DROP CONSTRAINT [DF__Enchanted__Image__6EF57B66]
GO
/****** Object:  Table [dbo].[EnchantedGarden]    Script Date: 5/4/2023 1:16:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnchantedGarden]') AND type in (N'U'))
DROP TABLE [dbo].[EnchantedGarden]
GO
/****** Object:  Table [dbo].[EnchantedGarden]    Script Date: 5/4/2023 1:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnchantedGarden](
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
 CONSTRAINT [PK__Enchante__DC1540268B897A12] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EnchantedGarden] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[EnchantedGarden] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (1, N'Bee Sting', N'Wasp Wing', N'Raw Wax', N'', N'Common Monster', N'Wasp', N'Wasp2', N'None', N'Insect', 622, 16385, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 30, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 12000, N'Random', 5, N'Assail', N'Thrust', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[EnchantedGarden] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (2, N'Mantis Eye', N'Red Pine Stick', N'', N'', N'Common Monster', N'Mantis', N'Mantis2', N'None', N'Insect', 622, 16471, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 20, 1, N'Aggressive', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 12000, N'Random', 7, N'Wallop', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[EnchantedGarden] ([MonsterId], [DropOne], [DropTwo], [DropThree], [DropFour], [ScriptName], [BaseName], [Name], [Type], [MonType], [AreaId], [Image], [ImageVariance], [SpawnType], [DefinedX], [DefinedY], [ElementType], [OffenseElement], [DefenseElement], [SpawnSize], [SpawnMax], [SpawnRate], [Mood], [MovementSpeed], [EngagedSpeed], [PathFinder], [IgnoreCollision], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [AttackSpeed], [CastSpeed], [LootType], [Level], [AssailOne], [AssailTwo], [AssailThree], [AssailFour], [AssailFive], [SpellOne], [SpellTwo], [SpellThree], [SpellFour], [SpellFive], [AbilityOne], [AbilityTwo], [AbilityThree], [AbilityFour], [AbilityFive]) VALUES (3, N'Viper Gland', N'', N'', N'', N'Common Monster', N'Viper', N'Viper2', N'None', N'Reptile', 622, 16433, 0, N'Random', 0, 0, N'None', N'None', N'None', 5, 30, 1, N'Neutral', 2000, 1500, N'Wander', 0, N'', N'', N'', N'', N'', 1000, 2500, N'Random', 6, N'Assail', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Image__6EF57B66]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Image__6FE99F9F]  DEFAULT ((0)) FOR [ImageVariance]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Defin__70DDC3D8]  DEFAULT ((0)) FOR [DefinedX]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Defin__71D1E811]  DEFAULT ((0)) FOR [DefinedY]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Offen__7A672E12]  DEFAULT ((0)) FOR [OffenseElement]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Defen__7B5B524B]  DEFAULT ((0)) FOR [DefenseElement]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Spawn__72C60C4A]  DEFAULT ((0)) FOR [SpawnSize]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Spawn__73BA3083]  DEFAULT ((20)) FOR [SpawnMax]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Spawn__74AE54BC]  DEFAULT ((1)) FOR [SpawnRate]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Movem__76969D2E]  DEFAULT ((1800)) FOR [MovementSpeed]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Engag__778AC167]  DEFAULT ((900)) FOR [EngagedSpeed]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Ignor__75A278F5]  DEFAULT ((0)) FOR [IgnoreCollision]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Attac__787EE5A0]  DEFAULT ((1000)) FOR [AttackSpeed]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__CastS__797309D9]  DEFAULT ((5000)) FOR [CastSpeed]
GO
ALTER TABLE [dbo].[EnchantedGarden] ADD  CONSTRAINT [DF__Enchanted__Level__7D439ABD]  DEFAULT ((1)) FOR [Level]
GO
