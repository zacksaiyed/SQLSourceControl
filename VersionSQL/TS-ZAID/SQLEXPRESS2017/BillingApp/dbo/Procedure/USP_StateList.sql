/****** Object:  Procedure [dbo].[USP_StateList]    Committed by VersionSQL https://www.versionsql.com ******/

create proc [dbo].[USP_StateList]
AS
BEGIN
Select 
Id,
StateName 
from M_States

END
