USE [FoodCourtDb]
GO

/****** Object: Table [dbo].[tblUsers] Script Date: 23-05-2022 19:54:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblUsers] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [UserName]  VARCHAR (50)  NOT NULL,
    [Password]  VARCHAR (50)  NOT NULL,
    [FirstName] VARCHAR (50)  NULL,
    [LastName]  VARCHAR (50)  NULL,
    [Address]   VARCHAR (MAX) NOT NULL,
    [City]      VARCHAR (50)  NULL,
    [ContactNo] VARCHAR (50)  NULL,
    [Email]     VARCHAR (50)  NULL,
    [RoleId]    INT           NULL,
    [IsActive]  BIT           NOT NULL,
    [PinCode]   VARCHAR (20)  NULL
);


