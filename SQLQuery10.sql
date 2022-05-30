USE [ASPCRUD]
GO
/****** Object:  StoredProcedure [dbo].[ContactsViewByID]    Script Date: 31/05/2022 02:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[ContactsViewByID]
@ContactID int
AS 
	BEGIN 
	SELECT * 
	FROM Contacts
	WHERE ContactID = @ContactID
	END