USE [FoodCourtDb]
GO

/****** Object: Table [dbo].[tblProducts] Script Date: 23-05-2022 19:50:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblProducts] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ProductName]        VARCHAR (50)  NOT NULL,
    [ProductDescription] VARCHAR (MAX) NULL,
    [Rate]               FLOAT (53)    NOT NULL,
    [IsActive]           BIT           NOT NULL
);


