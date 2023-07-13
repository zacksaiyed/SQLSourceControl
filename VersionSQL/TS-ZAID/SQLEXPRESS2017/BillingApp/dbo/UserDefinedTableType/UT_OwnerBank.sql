/****** Object:  UserDefinedTableType [dbo].[UT_OwnerBank]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TYPE [dbo].[UT_OwnerBank] AS TABLE(
	[Id] [int] NULL,
	[BankName] [varchar](50) NULL,
	[BranchName] [varchar](50) NULL,
	[AccountNumber] [bigint] NULL,
	[IFSCCode] [varchar](50) NULL,
	[OwnerId] [int] NULL,
	[IsCreated] [bit] NULL,
	[IsUpdated] [bit] NULL
)
