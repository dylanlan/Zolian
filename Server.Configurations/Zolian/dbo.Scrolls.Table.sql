USE [Zolian]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Color__5AB9788F]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__StageRe__59C55456]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__DropRat__58D1301D]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__LevelRe__57DD0BE4]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Class__56E8E7AB]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Worth__55F4C372]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__CarryWe__55009F39]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Flags__540C7B00]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Display__531856C7]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__Image__5224328E]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__MaxStac__51300E55]
GO
ALTER TABLE [dbo].[Scrolls] DROP CONSTRAINT [DF__Scrolls__CanStac__503BEA1C]
GO
/****** Object:  Table [dbo].[Scrolls]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Scrolls]') AND type in (N'U'))
DROP TABLE [dbo].[Scrolls]
GO
/****** Object:  Table [dbo].[Scrolls]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scrolls](
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
ALTER TABLE [dbo].[Scrolls] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 1, 100, 33648, 33648, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Abel Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 1, 100, 32774, 32774, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Cascade Falls Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 1, 100, 33650, 33650, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Loures Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 1, 100, 32914, 32914, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Mileth Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 1, 100, 33651, 33651, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Oren Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 1, 100, 32771, 32771, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Piet Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 1, 100, 32773, 32773, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Rionnag Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 1, 100, 32770, 32770, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Rucesion Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 1, 100, 32769, 32769, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Suomi Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 1, 100, 32772, 32772, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Tagor Scroll', N'Scrolls')
INSERT [dbo].[Scrolls] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 1, 100, 32775, 32775, N'Scroll', N'NormalConsumable', 0, 2000, N'', N'Peasant', 1, CAST(0.91 AS Decimal(3, 2)), N'Class', N'Lavender', N'Undine Scroll', N'Scrolls')
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Scrolls] ADD  DEFAULT ((0)) FOR [Color]
GO
