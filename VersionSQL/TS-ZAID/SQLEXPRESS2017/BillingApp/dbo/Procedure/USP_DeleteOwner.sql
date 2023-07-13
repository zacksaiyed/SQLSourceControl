/****** Object:  Procedure [dbo].[USP_DeleteOwner]    Committed by VersionSQL https://www.versionsql.com ******/

create proc [dbo].[USP_DeleteOwner]
@OwnerId int
AS
BEGIN

Delete from OwnerAddresses where OwnerId=@OwnerId

Delete from OwnerBanks where OwnerId=@OwnerId

Delete from M_Owner where Id=@OwnerId

END
