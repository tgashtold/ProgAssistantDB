
CREATE   PROCEDURE AddQuestionsHashtags
	@Hashtag NVARCHAR(50),
	@QuestionId NVARCHAR(20)
AS
BEGIN
	DECLARE @HashtagId INT;
	SET @HashtagId = (SELECT Id FROM Hashtags WHERE Hashtag = @Hashtag);

	IF NOT EXISTS (
		SELECT QuestionId, HashtagId
		FROM QuestionsHashtags
		WHERE QuestionId=@QuestionId AND HashtagId=@HashtagId )
	INSERT INTO QuestionsHashtags(HashtagId, QuestionId)
	VALUES(@HashtagId, @QuestionId)
END

