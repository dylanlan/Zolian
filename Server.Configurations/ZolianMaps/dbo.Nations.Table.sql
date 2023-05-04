USE [ZolianMaps]
GO
/****** Object:  Table [dbo].[Nations]    Script Date: 5/4/2023 1:15:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nations]') AND type in (N'U'))
DROP TABLE [dbo].[Nations]
GO
/****** Object:  Table [dbo].[Nations]    Script Date: 5/4/2023 1:15:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nations](
	[Id] [int] NOT NULL,
	[AreaId] [int] NOT NULL,
	[MapPositionX] [int] NOT NULL,
	[MapPositionY] [int] NOT NULL,
	[NationId] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nations] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (1, 1003, 5, 8, 1, N'Suomi')
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (2, 169, 4, 7, 2, N'Abel')
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (3, 3052, 41, 14, 3, N'Knights')
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (4, 136, 5, 8, 4, N'Mileth')
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (6, 498, 6, 6, 6, N'Rucesion')
INSERT [dbo].[Nations] ([Id], [AreaId], [MapPositionX], [MapPositionY], [NationId], [Name]) VALUES (8, 3210, 27, 17, 8, N'Rionnag')
GO
