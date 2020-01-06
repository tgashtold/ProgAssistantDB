
CREATE   PROCEDURE AddQuestion
	@Id NVARCHAR(20),
	@Title NVARCHAR(500),
	@Description VARCHAR(2000),
	@UserId NVARCHAR(20),
	@IsClosed BIT,
	@Date DATETIME 
AS
	IF NOT EXISTS (
		SELECT Id, Title, Description
		FROM Questions
		WHERE Id=@Id AND Title=@Title AND Description=@Description )
		BEGIN
	INSERT INTO Questions(Id, Title, Description, UserId, IsClosed, Date)
	VALUES(@Id, @Title, @Description, @UserId, @IsClosed, @Date)
END

