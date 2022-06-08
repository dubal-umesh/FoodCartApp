USE [FoodCourtDb]
GO

/****** Object:  StoredProcedure [dbo].[sp_getCustomerOrders]    Script Date: 08-06-2022 21:29:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getCustomerOrders]
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select o.Id, OrderNumber, OrderDate, CustomerId,Amount, u.FirstName + ' ' + u.LastName as CustomerName, u.Address, u.ContactNo , case status when  2 then 'Complete' else 'In Progress' end as status
	from tblOrders o inner join tblUsers u on o.CustomerId=u.Id where Status  is not null and o.IsActive=1 and CustomerId=@CustomerId;
   
END
GO


