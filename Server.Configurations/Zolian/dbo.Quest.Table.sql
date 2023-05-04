USE [Zolian]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__Color__4D5F7D71]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__StageRequ__4C6B5938]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__DropRate__4B7734FF]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__LevelRequ__4A8310C6]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__Class__498EEC8D]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__Worth__489AC854]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__CarryWeig__47A6A41B]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__Flags__46B27FE2]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__DisplayIm__45BE5BA9]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__Image__44CA3770]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__MaxStack__43D61337]
GO
ALTER TABLE [dbo].[Quest] DROP CONSTRAINT [DF__Quest__CanStack__42E1EEFE]
GO
/****** Object:  Table [dbo].[Quest]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quest]') AND type in (N'U'))
DROP TABLE [dbo].[Quest]
GO
/****** Object:  Table [dbo].[Quest]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest](
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
ALTER TABLE [dbo].[Quest] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (1, 0, 0, 8004, 40772, N'', N'NonDropableQuestNoConsume', 0, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Assassin Notes', N'Quest')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (2, 0, 0, 33381, 33381, N'Consumable', N'NonDropableQuest', 0, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Zolian Guide', N'Guide')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (3, 0, 0, 33132, 33132, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Cail''s Hourglass', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (4, 0, 0, 33501, 33501, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ceannlaidir''s Tamed Sword', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (5, 0, 0, 33270, 33270, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Ceannlaidir''s Enchanted Sword', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (6, 0, 0, 36058, 36058, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Assassin Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (7, 0, 0, 36054, 36054, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Berserker Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (8, 0, 0, 36053, 36053, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Arcanus Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (9, 0, 0, 36059, 36059, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Defender Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (10, 0, 0, 36060, 36060, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Monk Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (11, 0, 0, 36051, 36051, N'', N'NonDropableQuestNoConsume', 10, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Chadul''s Priest Lexicon', N'Lexicon')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (12, 0, 0, 33273, 33273, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Fiosachd''s Lost Flute', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (13, 0, 0, 36027, 36027, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Glioca''s Secret', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (14, 0, 0, 33131, 33131, N'', N'NonDropableQuestNoConsume', 3, 0, N'', N'Peasant', 1, CAST(1.00 AS Decimal(3, 2)), N'Class', N'Lavender', N'Luathas''s Lost Relic', N'Artifact')
INSERT [dbo].[Quest] ([Id], [CanStack], [MaxStack], [Image], [DisplayImage], [ScriptName], [Flags], [CarryWeight], [Worth], [NpcKey], [Class], [LevelRequired], [DropRate], [StageRequired], [Color], [Name], [GroupIn]) VALUES (15, 0, 0, 33846, 33846, N'Consumable', N'NonDropableQuestUnique', 1, 0, N'', N'Peasant', 100, CAST(0.05 AS Decimal(3, 2)), N'Class', N'Lavender', N'Necra Scribblings', N'Quest')
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [CanStack]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [MaxStack]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[Quest] ADD  DEFAULT ((0)) FOR [Color]
GO
