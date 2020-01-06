
CREATE   PROCEDURE AddAnswerLike
	@UserId NVARCHAR(20),
	@AnswerId NVARCHAR(20)
AS
BEGIN
	IF NOT EXISTS (
		SELECT *
		FROM AnswersLikes
		WHERE UserId=@UserId AND AnswerId=@AnswerId )
	INSERT INTO AnswersLikes (UserId, AnswerId)
	VALUES(@UserId, @AnswerId)
END

