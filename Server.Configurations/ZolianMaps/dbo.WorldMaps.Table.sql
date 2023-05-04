USE [ZolianMaps]
GO
/****** Object:  Table [dbo].[WorldMaps]    Script Date: 5/4/2023 1:15:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorldMaps]') AND type in (N'U'))
DROP TABLE [dbo].[WorldMaps]
GO
/****** Object:  Table [dbo].[WorldMaps]    Script Date: 5/4/2023 1:15:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorldMaps](
	[Id] [int] NOT NULL,
	[PortalId] [int] NOT NULL,
	[FieldNumber] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](30) NULL,
	[Group] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
