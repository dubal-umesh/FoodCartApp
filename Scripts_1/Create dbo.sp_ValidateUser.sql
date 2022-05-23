USE [FoodCourtDb]
GO

/****** Object: SqlProcedure [dbo].[sp_ValidateUser] Script Date: 23-05-2022 19:56:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_ValidateUser]
	@userName varchar(50),
	@password varchar(50)
AS
	SELECT u.id,u.UserName,u.FirstName,u.LastName,u.RoleId,r.RoleName from tblUsers u inner join tblRoles r on u.RoleId=r.Id   
	where UserName=@userName AND Password=@password and u.IsActive=1;
