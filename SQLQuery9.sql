USE [ASPCRUD]
GO
/****** Object:  StoredProcedure [dbo].[ContactsViewAll]    Script Date: 31/05/2022 02:03:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[ContactsViewAll]
AS
	BEGIN
	SELECT * 
	FROM Contacts
	END