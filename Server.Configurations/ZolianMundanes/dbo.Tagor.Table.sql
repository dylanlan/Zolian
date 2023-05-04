USE [ZolianMundanes]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__Direction__477199F1]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__Y__467D75B8]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__X__4589517F]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__EnableSpe__44952D46]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__EnableTur__43A1090D]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__EnableWal__42ACE4D4]
GO
ALTER TABLE [dbo].[Tagor] DROP CONSTRAINT [DF__Tagor__Image__41B8C09B]
GO
/****** Object:  Table [dbo].[Tagor]    Script Date: 5/4/2023 1:17:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tagor]') AND type in (N'U'))
DROP TABLE [dbo].[Tagor]
GO
/****** Object:  Table [dbo].[Tagor]    Script Date: 5/4/2023 1:17:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tagor](
	[MundaneId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[ScriptKey] [varchar](20) NOT NULL,
	[EnableWalking] [bit] NOT NULL,
	[EnableTurning] [bit] NOT NULL,
	[EnableSpeech] [bit] NOT NULL,
	[SpeechOne] [varchar](80) NULL,
	[SpeechTwo] [varchar](80) NULL,
	[SpeechThree] [varchar](80) NULL,
	[SpeechFour] [varchar](80) NULL,
	[SpeechFive] [varchar](80) NULL,
	[X] [int] NOT NULL,
	[Y] [int] NOT NULL,
	[AreaId] [int] NOT NULL,
	[Direction] [int] NOT NULL,
	[WayPointOne] [varchar](7) NULL,
	[WayPointTwo] [varchar](7) NULL,
	[WayPointThree] [varchar](7) NULL,
	[WayPointFour] [varchar](7) NULL,
	[WayPointFive] [varchar](7) NULL,
	[PathFinder] [varchar](10) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[DefaultStock1] [varchar](30) NULL,
	[DefaultStock2] [varchar](30) NULL,
	[DefaultStock3] [varchar](30) NULL,
	[DefaultStock4] [varchar](30) NULL,
	[DefaultStock5] [varchar](30) NULL,
	[DefaultStock6] [varchar](30) NULL,
	[DefaultStock7] [varchar](30) NULL,
	[DefaultStock8] [varchar](30) NULL,
	[DefaultStock9] [varchar](30) NULL,
	[DefaultStock10] [varchar](30) NULL,
	[DefaultStock11] [varchar](30) NULL,
	[DefaultStock12] [varchar](30) NULL,
	[DefaultStock13] [varchar](30) NULL,
	[DefaultStock14] [varchar](30) NULL,
	[DefaultStock15] [varchar](30) NULL,
	[DefaultStock16] [varchar](30) NULL,
	[DefaultStock17] [varchar](30) NULL,
	[DefaultStock18] [varchar](30) NULL,
	[DefaultStock19] [varchar](30) NULL,
	[DefaultStock20] [varchar](30) NULL,
	[DefaultStock21] [varchar](30) NULL,
	[DefaultStock22] [varchar](30) NULL,
	[DefaultStock23] [varchar](30) NULL,
	[DefaultStock24] [varchar](30) NULL,
	[DefaultStock25] [varchar](30) NULL,
	[DefaultStock26] [varchar](30) NULL,
	[DefaultStock27] [varchar](30) NULL,
	[DefaultStock28] [varchar](30) NULL,
	[DefaultStock29] [varchar](30) NULL,
	[DefaultStock30] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MundaneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tagor] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (1, 16495, N'Training Center', 0, 0, 1, N'Welcome', N'Speak to me if you wish to train', N'', N'', N'', 3, 3, 5252, 2, N'', N'', N'', N'', N'', N'Fixed', N'Voluspa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [EnableWalking]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [EnableTurning]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [EnableSpeech]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [Y]
GO
ALTER TABLE [dbo].[Tagor] ADD  DEFAULT ((0)) FOR [Direction]
GO
