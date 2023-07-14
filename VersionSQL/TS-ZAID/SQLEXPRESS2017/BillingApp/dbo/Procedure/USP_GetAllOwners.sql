/****** Object:  Procedure [dbo].[USP_GetAllOwners]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE proc [dbo].[USP_GetAllOwners]

AS
BEGIN

Select
Distinct
MO.Id,
MO.OwnerName,
MO.GSTNo,
Mo.ContactNo,
OA.Street1 + ', '+ OA.Street2 + ', ' + OA.City +'-'+CAST (OA.PostCode AS varchar(50)) +', ' + MS.StateName as [OwnerAddress]
From M_Owner MO
Left join OwnerAddresses OA on OA.OwnerId=MO.Id
Left join M_States MS on MS.Id=OA.StateId
UNION
Select
Distinct
MO.Id,
MO.OwnerName,
MO.GSTNo,
Mo.ContactNo,
OA.Street1 + ', '+ OA.Street2 + ', ' + OA.City +'-'+CAST (OA.PostCode AS varchar(50)) +', ' + MS.StateName as [OwnerAddress]
From M_Owner MO
Left join OwnerAddresses OA on OA.OwnerId=MO.Id
Left join M_States MS on MS.Id=OA.StateId
UNION
Select
Distinct
MO.Id,
'Owner From Feature 2'OwnerName,
MO.GSTNo,
Mo.ContactNo,
OA.Street1 + ', '+ OA.Street2 + ', ' + OA.City +'-'+CAST (OA.PostCode AS varchar(50)) +', ' + MS.StateName as [OwnerAddress]
From M_Owner MO
Left join OwnerAddresses OA on OA.OwnerId=MO.Id
Left join M_States MS on MS.Id=OA.StateId
END
