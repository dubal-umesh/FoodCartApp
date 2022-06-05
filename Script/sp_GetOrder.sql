USE [FoodCourtDb]
GO



CREATE PROCEDURE [dbo].[sp_GetOrder]
	@OrderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select top 1 o.Id, OrderNumber, OrderDate, CustomerId,Amount, u.FirstName + ' ' + u.LastName as CustomerName, u.Address, u.ContactNo 
	from tblOrders o inner join tblUsers u on o.CustomerId=u.Id where o.IsActive=1  and o.Id=@OrderId

END
GO


