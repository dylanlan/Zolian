USE [ZolianMundanes]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__Directi__5A846E65]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__Y__59904A2C]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__X__589C25F3]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__EnableS__57A801BA]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__EnableT__56B3DD81]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__EnableW__55BFB948]
GO
ALTER TABLE [dbo].[Rionnag] DROP CONSTRAINT [DF__Rionnag__Image__54CB950F]
GO
/****** Object:  Table [dbo].[Rionnag]    Script Date: 5/4/2023 1:17:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rionnag]') AND type in (N'U'))
DROP TABLE [dbo].[Rionnag]
GO
/****** Object:  Table [dbo].[Rionnag]    Script Date: 5/4/2023 1:17:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rionnag](
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
ALTER TABLE [dbo].[Rionnag] SET (LOCK_ESCALATION = AUTO)
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [EnableWalking]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [EnableTurning]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [EnableSpeech]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [Y]
GO
ALTER TABLE [dbo].[Rionnag] ADD  DEFAULT ((0)) FOR [Direction]
GO
