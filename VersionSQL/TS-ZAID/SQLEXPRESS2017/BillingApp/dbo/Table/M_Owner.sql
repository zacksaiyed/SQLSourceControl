/****** Object:  Table [dbo].[M_Owner]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[M_Owner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerName] [varchar](50) NULL,
	[ContactNo] [bigint] NULL,
	[GSTNo] [varchar](50) NULL,
	[Juridication] [varchar](50) NULL,
	[BusinessType] [varchar](250) NULL,
	[ZZZZ] [nchar](10) NULL,
	[AddColumnFromFeature2] [int] NULL,
 CONSTRAINT [PK_M_Owner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
