/****** Object:  Procedure [dbo].[USP_GetOwnerAddressById]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE proc [dbo].[USP_GetOwnerAddressById]
@AdressId int
AS
BEGIN
Select 
Id,
Street1,
Street2,
City,
PostCode,
StateId

from  OwnerAddresses
where Id=@AdressId

END
