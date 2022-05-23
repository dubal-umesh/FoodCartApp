USE [FoodCourtDb]
GO

/****** Object: Table [dbo].[tblRoles] Script Date: 23-05-2022 19:54:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRoles] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [RoleName] VARCHAR (50) NOT NULL,
    [IsActive] BIT          NULL
);


