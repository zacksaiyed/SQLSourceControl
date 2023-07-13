/****** Object:  Procedure [dbo].[USP_DeleteBankDetail]    Committed by VersionSQL https://www.versionsql.com ******/

create proc [dbo].[USP_DeleteBankDetail]
@OwnerId int,
@BankId int
AS
BEGIN

Delete from OwnerBanks where Id=@BankId and OwnerId=@OwnerId
END
