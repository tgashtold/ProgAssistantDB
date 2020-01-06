
CREATE   PROCEDURE AddHashtag
	@Hashtag NVARCHAR(50)
AS
BEGIN
	IF NOT EXISTS (
		SELECT Hashtag
		FROM Hashtags
		WHERE Hashtag=@Hashtag )
	INSERT INTO Hashtags(Hashtag)
	VALUES(@Hashtag)
END

