/****** Object:  Table [dbo].[OwnerBanks]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[OwnerBanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](50) NULL,
	[BranchName] [varchar](50) NULL,
	[AccountNumber] [bigint] NULL,
	[IFSCCode] [varchar](50) NULL,
	[OwnerId] [int] NULL,
 CONSTRAINT [PK_OwnerBanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[OwnerBanks]  WITH CHECK ADD  CONSTRAINT [FK_OwnerBanks_M_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[M_Owner] ([Id])
ALTER TABLE [dbo].[OwnerBanks] CHECK CONSTRAINT [FK_OwnerBanks_M_Owner]
