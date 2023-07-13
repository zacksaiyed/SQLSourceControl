/****** Object:  Procedure [dbo].[USP_DeleteOwnerAddress]    Committed by VersionSQL https://www.versionsql.com ******/

create proc [dbo].[USP_DeleteOwnerAddress]
@OwnerId int,
@AddressId int
AS
BEGIN

Delete From OwnerAddresses where OwnerId=@OwnerId and Id=@AddressId
END
