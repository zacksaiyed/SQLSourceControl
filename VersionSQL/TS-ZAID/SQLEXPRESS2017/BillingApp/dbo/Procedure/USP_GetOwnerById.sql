/****** Object:  Procedure [dbo].[USP_GetOwnerById]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE proc [dbo].[USP_GetOwnerById] 
@OwnerId int
AS
BEGIN

Select 
Id,
OwnerName,
ContactNo,
GSTNo,
Juridication,
BusinessType
from M_Owner
where Id=@OwnerId

Select
OA.Id,
OA.Street1,
OA.Street2,
OA.City,
OA.PostCode,
OA.StateId
from OwnerAddresses OA
Inner join M_Owner MO on OA.OwnerId=MO.Id
where OA.OwnerId=@OwnerId

Select
OB.Id,
OB.BankName,
OB.BranchName,
OB.AccountNumber,
OB.IFSCCode
From OwnerBanks OB
Inner join M_Owner MO on OB.OwnerId=MO.Id
where OB.OwnerId=@OwnerId

END
