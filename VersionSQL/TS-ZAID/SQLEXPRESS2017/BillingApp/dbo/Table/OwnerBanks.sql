/****** Object:  Table [dbo].[OwnerBanks]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[OwnerBanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](50) NULL,
	[AccountNumber] [bigint] NULL,
	[IFSCCode] [varchar](max) NULL,
	[OwnerId] [int] NULL,
	[DemoForFEature2] [nchar](10) NULL,
 CONSTRAINT [PK_OwnerBanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
