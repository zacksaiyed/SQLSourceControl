/****** Object:  Procedure [dbo].[USP_CreateUpdateOwner]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE proc [dbo].[USP_CreateUpdateOwner]

@OwnerId int,
@OwnerName varchar(50),
@ContactNo bigint,
@GSTNo varchar(50),
@Juridication varchar(50),
@BusinessType varchar(250),
@OwnerAddresses UT_OwnerAddress Readonly,
@OwnerBankDetails UT_OwnerBank Readonly
AS
BEGIN
--BEGIN TRY

--BEGIN TRANSACTION

Declare @OwnerAddressesCount int
Declare @OwnerBankDetailCount int
Declare @IsCreate bit =0


select * into #OwnerAdress from @OwnerAddresses
select * into #OwnerBank	from @OwnerBankDetails

select @OwnerAddressesCount=Count(OwnerId) from #OwnerAdress
select @OwnerBankDetailCount=COUNT(OwnerId) from #OwnerBank


IF NOT EXISTS(Select Id from M_Owner where OwnerName=@OwnerName)
BEGIN

	set @IsCreate=1

	insert into M_Owner values(@OwnerName,@ContactNo,@GSTNo,@Juridication,@BusinessType)

	set @OwnerId = SCOPE_IDENTITY()

END

ELSE
	BEGIN

	Update M_Owner
	set OwnerName=@OwnerName,
	ContactNo=@ContactNo,
	GSTNo=@GSTNo,
	Juridication=@Juridication,
	BusinessType=@BusinessType
	where Id=@OwnerId
	END


if(@IsCreate=1)
	BEGIN
	Update #OwnerAdress set OwnerId=@OwnerId
	Update #OwnerBank set OwnerId=@OwnerId
	END

if(@OwnerAddressesCount > 0)
	BEGIN
	insert into OwnerAddresses(
	Street1,
	Street2,
	City,
	PostCode,
	StateId,
	OwnerId
	)
	Select Street1,
		   Street2,
		   City,
		   PostCode,
		   OwnerState,
		   OwnerId
	 from #OwnerAdress 
	 where IsCreated=1
	

	Update OA set 
		OA.Street1=TOA.Street1,
		OA.Street2=TOA.Street2,
		OA.City=TOA.City,
		OA.PostCode=TOA.PostCode,
		OA.StateId=TOA.OwnerState
	from #OwnerAdress TOA
	 inner join OwnerAddresses OA on OA.Id=TOA.Id and OA.OwnerId=TOA.OwnerId
	 where TOA.IsUpdated=1
	
	END

if(@OwnerBankDetailCount >0)
	BEGIN

	insert into OwnerBanks(
	
		BankName,
		BranchName,
		AccountNumber,
		IFSCCode,
		OwnerId
		)
	Select
	 BankName,
	 BranchName,
	 AccountNumber,
	 IFSCCode,
	 OwnerId
	from #OwnerBank
	where IsCreated=1
	
	Update OB set
	 OB.AccountNumber=TOB.AccountNumber,
	 OB.BankName=TOB.BankName,
	 OB.BranchName=TOB.BranchName,
	 OB.IFSCCode=TOB.IFSCCode

	from #OwnerBank TOB
	inner join OwnerBanks OB on OB.Id=TOB.Id and OB.OwnerId=TOB.OwnerId
	and IsUpdated=1



	END

--COMMIT TRANSACTION

--END TRY

--BEGIN CATCH
--ROLLBACK TRANSACTION 
--END CATCH



END
