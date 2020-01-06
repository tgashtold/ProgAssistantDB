
CREATE   PROCEDURE AddProgLanguage
	@Language NVARCHAR(30)
AS
BEGIN
	IF NOT EXISTS (
		SELECT Language
		FROM ProgLanguages
		WHERE Language = @Language)
	INSERT INTO ProgLanguages(Language)
	VALUES(@Language)
END

