USE [ZolianMundanes]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__Direction__339FAB6E]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__Y__32AB8735]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__X__31B762FC]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__EnableSpee__30C33EC3]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__EnableTurn__2FCF1A8A]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__EnableWalk__2EDAF651]
GO
ALTER TABLE [dbo].[Abel] DROP CONSTRAINT [DF__Abel__Image__2DE6D218]
GO
/****** Object:  Table [dbo].[Abel]    Script Date: 5/4/2023 1:17:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Abel]') AND type in (N'U'))
DROP TABLE [dbo].[Abel]
GO
/****** Object:  Table [dbo].[Abel]    Script Date: 5/4/2023 1:17:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abel](
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
ALTER TABLE [dbo].[Abel] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (1, 17271, N'', 0, 0, 1, N'Move along.', N'Active Investigation.', N'', N'', N'', 13, 1, 168, 2, N'', N'', N'', N'', N'', N'Fixed', N'Achille', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (2, 16408, N'', 0, 0, 1, N'Try out the Pizza!', N'', N'', N'', N'', 6, 4, 181, 2, N'', N'', N'', N'', N'', N'Fixed', N'Alleen', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (3, 16671, N'', 0, 0, 1, N'Big catches today.', N'Yea, I did see something weird down by the docks.', N'', N'', N'', 6, 5, 390, 2, N'', N'', N'', N'', N'', N'Fixed', N'Anwar', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (4, 16440, N'Banker', 0, 0, 0, N'', N'', N'', N'', N'', 3, 6, 167, 1, N'', N'', N'', N'', N'', N'Fixed', N'Cecil', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (5, 16415, N'Weapon Armor Shop', 0, 0, 0, N'', N'', N'', N'', N'', 6, 7, 183, 1, N'', N'', N'', N'', N'', N'Fixed', N'Delthi', N'Intermediate Garb', N'Intermediate Bodice', N'Padded Cotehardie', N'Padded Lorem', N'Mythril-Woven Coat', N'Mythril-Woven Gorget', N'Etched Cotehardie', N'Etched Lorem', N'Assailant Hide', N'Corsette', N'Advanced Robes', N'Enhanced Benusta', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (6, 16417, N'Barber', 0, 0, 1, N'Let''s change it up a bit.', N'', N'', N'', N'', 5, 5, 171, 1, N'', N'', N'', N'', N'', N'Fixed', N'Codus', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (7, 16426, N'Item Shop', 0, 0, 1, N'Let me know if I can help.', N'', N'', N'', N'', 5, 7, 388, 1, N'', N'', N'', N'', N'', N'Fixed', N'Devlin', N'Abel Scroll', N'Rucesion Scroll', N'Suomi Scroll', N'Ard Ioc Deum', N'Mor Ioc Deum', N'Ioc Deum', N'Lessor Flame Crystal', N'Lessor Sea Crystal', N'Lessor Gust Crystal', N'Lessor Gravel Crystal', N'Minor Death Orb', N'Minor Fairy Orb', N'Magus Zeus', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (8, 16477, N'Weapon Armor Shop', 0, 0, 0, N'Let me take a look at that weapon!', N'pfft... *wipes sweat*', N'*clank, clank, clank*', N'', N'', 7, 6, 184, 1, N'', N'', N'', N'', N'', N'Fixed', N'Keallach', N'Battle Sword', N'Templar', N'Masquerade', N'Bramble', N'Magus Tartus', N'Resto Staff', N'Cleric''s Crux', N'Blessed Dagger', N'Moon Shuriken', N'Bloody Paws', N'Training Polearm', N'Wooden Bow', N'Nunchucks', N'Metal Chain', N'Razor Claws', N'Centered Dagger', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (9, 16983, N'', 0, 0, 1, N'Let''s get to work.', N'I have little patience.', N'', N'', N'', 6, 8, 305, 2, N'', N'', N'', N'', N'', N'Fixed', N'Lau', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (10, 16406, N'', 0, 0, 1, N'Some people started turning up missing. Guards are at a loss. what should we do?', N'We have a room open, if you want it.', N'The tide is coming in.', N'', N'', 3, 3, 169, 3, N'', N'', N'', N'', N'', N'Fixed', N'Lia', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (11, 16414, N'Weapon Armor Shop', 0, 0, 0, N'', N'', N'', N'', N'', 4, 5, 182, 2, N'', N'', N'', N'', N'', N'Fixed', N'Lowell', N'Leather Shield', N'Bronze Shield', N'Grey Boots', N'Cured Boots', N'Plague Boots', N'Shagreen Boots', N'Pearl Earrings', N'Royal Gold Ring', N'Sapphire Ring', N'Iron Gauntlet', N'Iron Bracer', N'Iron Greaves', N'Fire Mythril Belt', N'Water Mythril Belt', N'Earth Mythril Belt', N'Wind Mythril Belt', N'Dark Mythril Belt', N'Light Mythril Belt', N'Fire Gold Jade Necklace', N'Sea Gold Jade Necklace', N'Wind Gold Jade Necklace', N'Earth Gold Jade Necklace', N'Dark Gold Jade Necklace', N'Light Gold Jade Necklace', N'Spiked Leather Greaves', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (12, 16547, N'', 0, 0, 1, N'Must have dropped my bracelet in the mound.', N'We sell some strong drinks here, what would you like?', N'', N'', N'', 6, 5, 168, 2, N'', N'', N'', N'', N'', N'Fixed', N'Vanessa', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Abel] ([MundaneId], [Image], [ScriptKey], [EnableWalking], [EnableTurning], [EnableSpeech], [SpeechOne], [SpeechTwo], [SpeechThree], [SpeechFour], [SpeechFive], [X], [Y], [AreaId], [Direction], [WayPointOne], [WayPointTwo], [WayPointThree], [WayPointFour], [WayPointFive], [PathFinder], [Name], [DefaultStock1], [DefaultStock2], [DefaultStock3], [DefaultStock4], [DefaultStock5], [DefaultStock6], [DefaultStock7], [DefaultStock8], [DefaultStock9], [DefaultStock10], [DefaultStock11], [DefaultStock12], [DefaultStock13], [DefaultStock14], [DefaultStock15], [DefaultStock16], [DefaultStock17], [DefaultStock18], [DefaultStock19], [DefaultStock20], [DefaultStock21], [DefaultStock22], [DefaultStock23], [DefaultStock24], [DefaultStock25], [DefaultStock26], [DefaultStock27], [DefaultStock28], [DefaultStock29], [DefaultStock30]) VALUES (13, 16407, N'Black Market', 0, 0, 1, N'What did you bring me?', N'Always stab from the rear.', N'You won''t make it out of here alive if you steal from me.', N'', N'', 2, 7, 215, 2, N'', N'', N'', N'', N'', N'Fixed', N'Yves', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [EnableWalking]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [EnableTurning]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [EnableSpeech]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [Y]
GO
ALTER TABLE [dbo].[Abel] ADD  DEFAULT ((0)) FOR [Direction]
GO
