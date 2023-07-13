/****** Object:  Procedure [dbo].[USP_GetBankDetailById]    Committed by VersionSQL https://www.versionsql.com ******/

create proc [dbo].[USP_GetBankDetailById]
@BankId int
AS
BEGIN

Select 
Id,
BankName,
BranchName,
AccountNumber,
IFSCCode
From OwnerBanks
where Id=@BankId
END
