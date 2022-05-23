USE [FoodCourtDb]
GO

/****** Object: SqlProcedure [dbo].[SpRegisterUser] Script Date: 23-05-2022 19:56:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].SpRegisterUser
	@UserName Varchar(50),
	@Password varchar(50),
	@FirstName varchar(50),
	@LastName varchar(50),
	@Address varchar(max),
	@City varchar(50),
	@ContactNo varchar(50),
	@Email varchar(50),
	@RoleId	int,
	@PinCode varchar(50)
	
AS
	insert into tblUsers (UserName,Password, FirstName,LastName, Address, City,ContactNo, Email, RoleId, IsActive, PinCode)
	values(@UserName,@Password,@FirstName,@LastName,@Address,@City, @ContactNo,@Email, 2, 1, @PinCode);
