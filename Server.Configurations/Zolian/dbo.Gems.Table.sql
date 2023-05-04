USE [Zolian]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__Color__25518C17]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__StageRequi__245D67DE]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__DropRate__236943A5]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__LevelRequi__22751F6C]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__Class__2180FB33]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__Worth__208CD6FA]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__CarryWeigh__1F98B2C1]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__Flags__1EA48E88]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__DisplayIma__1DB06A4F]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__Image__1CBC4616]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__MaxStack__1BC821DD]
GO
ALTER TABLE [dbo].[Gems] DROP CONSTRAINT [DF__Gems__CanStack__1AD3FDA4]
GO
/****** Object:  Table [dbo].[Gems]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gems]') AND type in (N'U'))
DROP TABLE [dbo].[Gems]
GO
/****** Object:  Table [dbo].[Gems]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gems](
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
ALTER TABLE [dbo].[Gems] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 1, 15, 5598, 38366, N'Consumable', N'NormalMonsterDrop', 2, 30000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Cobalt Steel', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 1, 15, 321, 33089, N'Consumable', N'NormalMonsterDrop', 2, 15000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Copper', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 1, 15, 315, 33083, N'Consumable', N'NormalMonsterDrop', 2, 18000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Dark Iron', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 1, 15, 322, 33090, N'Consumable', N'NormalMonsterDrop', 2, 25000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Hybrasyl', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 1, 15, 3997, 36765, N'Consumable', N'NormalMonsterDrop', 2, 45000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Obsidian', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 1, 15, 316, 33084, N'Consumable', N'NormalMonsterDrop', 2, 12000, N'', N'Peasant', 20, CAST(0.15 AS Decimal(3, 2)), N'Class', N'Lavender', N'Raw Talos', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 1, 30, 336, 33104, N'', N'NormalMonsterDrop', 1, 270000, N'', N'Peasant', 20, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Cobalt Steel', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 1, 30, 317, 33085, N'', N'NormalMonsterDrop', 1, 150000, N'', N'Peasant', 20, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Copper', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 1, 30, 80, 32848, N'', N'NormalMonsterDrop', 1, 180000, N'', N'Peasant', 20, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Dark Iron', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 1, 30, 1037, 33805, N'', N'NormalMonsterDrop', 1, 165000, N'', N'Peasant', 20, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Hybrasyl', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 1, 30, 3996, 36764, N'', N'NormalMonsterDrop', 1, 300000, N'', N'Peasant', 20, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Obsidian', N'Gems')
INSERT [dbo].[Gems] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (12, 1, 30, 320, 33088, N'', N'NormalMonsterDrop', 1, 100000, N'', N'Peasant', 20, CAST(0.01 AS Decimal(3, 2)), N'Class', N'Lavender', N'Refined Talos', N'Gems')
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Gems] ADD  DEFAULT ((0)) FOR [Color]
GO
