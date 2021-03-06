USE [ASPCRUD]
GO
/****** Object:  StoredProcedure [dbo].[ContactsCreateOrUpdate]    Script Date: 31/05/2022 02:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[ContactsCreateOrUpdate]
@ContactID int,
@Name varchar(50),
@Mobile varchar(50),
@Address varchar (250)
AS

BEGIN
IF(@ContactID=0)
	BEGIN
	INSERT INTO Contacts(Name,Mobile,Address)
	VALUES(@Name,@Mobile,@Address)
	END
ELSE
	BEGIN
	UPDATE Contacts
	SET 
		Name = @Name,
		Mobile = @Mobile,
		Address = @Address
	WHERE ContactID = @ContactID
	END
END