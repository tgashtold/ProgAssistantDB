
CREATE   PROCEDURE AddUsersProgLanguages
	@UserId NVARCHAR(20),
	@ProgLanguage NVARCHAR(30)
AS
BEGIN
	DECLARE @ProgLanguageId INT;
	SET @ProgLanguageId=(SELECT Id FROM ProgLanguages WHERE Language = @ProgLanguage)

	IF NOT EXISTS (
		SELECT *
		FROM UsersProgLanguages
		WHERE UserId = @UserId AND ProgLanguageId=@ProgLanguageId )
	INSERT INTO UsersProgLanguages(UserId, ProgLanguageId)
	VALUES(@UserId, @ProgLanguageId)
END

