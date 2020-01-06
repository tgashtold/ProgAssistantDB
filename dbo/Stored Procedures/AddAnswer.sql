
CREATE   PROCEDURE AddAnswer
	@Id NVARCHAR(20),
	@Text NVARCHAR(2000),
	@Date DATETIME,
	@UserId NVARCHAR(20),
	@QuestionId NVARCHAR(20),
	@IsAccepted BIT
AS
BEGIN
	IF NOT EXISTS (
		SELECT Id, Text, UserId, QuestionId
		FROM Answers
		WHERE Id=@Id AND Text=@Text AND UserId=@UserId AND QuestionId=@QuestionId )
	INSERT INTO Answers (Id, Text, Date, UserId, QuestionId, IsAccepted)
	VALUES(@Id, @Text, @Date, @UserId, @QuestionId, @IsAccepted)
END

