/****** Object:  UserDefinedTableType [dbo].[UT_OwnerAddress]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TYPE [dbo].[UT_OwnerAddress] AS TABLE(
	[Id] [int] NULL,
	[Street1] [varchar](50) NULL,
	[Street2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostCode] [int] NULL,
	[OwnerState] [int] NULL,
	[OwnerId] [int] NULL,
	[IsCreated] [bit] NULL,
	[IsUpdated] [bit] NULL
)
