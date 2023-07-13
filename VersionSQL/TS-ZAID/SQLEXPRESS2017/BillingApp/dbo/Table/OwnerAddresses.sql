/****** Object:  Table [dbo].[OwnerAddresses]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[OwnerAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street1] [varchar](50) NULL,
	[Street2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostCode] [int] NULL,
	[StateId] [int] NULL,
	[OwnerId] [int] NULL,
 CONSTRAINT [PK_OwnerAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[OwnerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_OwnerAddresses_M_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[M_Owner] ([Id])
ALTER TABLE [dbo].[OwnerAddresses] CHECK CONSTRAINT [FK_OwnerAddresses_M_Owner]
ALTER TABLE [dbo].[OwnerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_OwnerAddresses_M_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[M_States] ([Id])
ALTER TABLE [dbo].[OwnerAddresses] CHECK CONSTRAINT [FK_OwnerAddresses_M_States]
