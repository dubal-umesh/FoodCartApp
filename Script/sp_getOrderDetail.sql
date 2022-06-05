USE [FoodCourtDb]
GO

/****** Object:  StoredProcedure [dbo].[sp_getOrderDetail]    Script Date: 05-06-2022 20:21:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getOrderDetail]
@OrderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select od.*, p.productName from tblOrderDetails od inner join tblProducts p on od.productId=p.Id where orderId=@orderId;
END
GO


