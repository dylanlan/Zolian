USE [ZolianMundanes]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__Directi__4D5F7D71]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__Y__4C6B5938]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__X__4B7734FF]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__EnableS__4A8310C6]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__EnableT__498EEC8D]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__EnableW__489AC854]
GO
ALTER TABLE [dbo].[Generic] DROP CONSTRAINT [DF__Generic__Image__47A6A41B]
GO
/****** Object:  Table [dbo].[Generic]    Script Date: 5/4/2023 1:17:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Generic]') AND type in (N'U'))
DROP TABLE [dbo].[Generic]
GO
/****** Object:  Table [dbo].[Generic]    Script Date: 5/4/2023 1:17:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generic](
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
ALTER TABLE [dbo].[Generic] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (1, 17131, N'', 0, 1, 0, N'', N'', N'', N'', N'', 4, 8, 14759, 1, N'', N'', N'', N'', N'', N'Fixed', N'Jenkins', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (2, 17272, N'CobaltSteel', 0, 0, 0, N'', N'', N'', N'', N'', 3, 6, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Cobalt Steel', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (3, 17272, N'Copper', 0, 0, 0, N'', N'', N'', N'', N'', 3, 7, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Copper', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (4, 17272, N'DarkIron', 0, 0, 0, N'', N'', N'', N'', N'', 4, 6, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Dark Iron', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (5, 17272, N'Hybrasyl', 0, 0, 0, N'', N'', N'', N'', N'', 4, 7, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Hybrasyl', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (6, 17272, N'Obsidian', 0, 0, 0, N'', N'', N'', N'', N'', 2, 7, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Obsidian', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (7, 17272, N'Talos', 0, 0, 0, N'', N'', N'', N'', N'', 2, 6, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Talos', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (8, 16711, N'Guide', 0, 0, 0, N'', N'', N'', N'', N'', 2, 2, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Guide', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (9, 17070, N'User Helper Menu', 0, 0, 0, N'', N'', N'', N'', N'', 7, 1, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Jenkins', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (10, 16452, N'Barren Lord', 0, 0, 1, N'Welcome, aisling.', N'..  The soul can only take so much.', N'I can revive you, for a price.. ', N'Soooo, you.. are here....', N'How many... how many times has it been now?', 17, 16, 23352, 1, N'', N'', N'', N'', N'', N'Fixed', N'Barren Lord', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (11, 16628, N'Temple of Light', 0, 0, 0, N'', N'', N'', N'', N'', 2, 5, 14759, 0, N'', N'', N'', N'', N'', N'Fixed', N'Hallowed Voice', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (12, 16429, N'', 0, 0, 1, N'Ha Ha Ha Ha Ha', N'       .', N'Fool', N'Do not speak to me.', N'Again?', 18, 11, 23352, 2, N'', N'', N'', N'', N'', N'Fixed', N'Hades', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (13, 17131, N'Quest Helper', 0, 0, 0, N'', N'', N'', N'', N'', 4, 9, 14759, 1, N'', N'', N'', N'', N'', N'Fixed', N'Nadia', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (14, 17063, N'Vampire Quest', 0, 0, 1, N'', N'', N'', N'', N'', 1, 1, 14759, 1, N'', N'', N'', N'', N'', N'Fixed', N'Nosferatu', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (15, 17132, N'Lycan Quest', 0, 0, 1, N'', N'', N'', N'', N'', 1, 2, 14759, 1, N'', N'', N'', N'', N'', N'Fixed', N'Fenrir', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Generic] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (16, 17396, N'Edward', 0, 0, 0, N'', N'', N'', N'', N'', 30, 50, 500, 3, N'', N'', N'', N'', N'', N'Fixed', N'Edward C', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [EnableWalking]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [EnableTurning]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [EnableSpeech]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [Y]
GO
ALTER TABLE [dbo].[Generic] ADD  DEFAULT ((0)) FOR [Direction]
GO
