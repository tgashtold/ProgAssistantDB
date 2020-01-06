
CREATE   PROCEDURE AddUser
	@Id NVARCHAR(20), 
	@FirstName NVARCHAR(30),
	@LastName NVARCHAR(30),
	@Email NVARCHAR(30),
	@Password NVARCHAR(20),
	@WorkExperience TINYINT,
	@WorkPosition nvarchar(50)
AS

	IF NOT EXISTS (
		SELECT Id, Email, Password
		FROM ProgramUsers
		WHERE Id = @Id OR Email = @Email OR Password = @Password)
BEGIN
	DECLARE @WorkPositionId INT;
	SET @WorkPositionId = (SELECT Id FROM WorkPosition WHERE Position = @WorkPosition)

	INSERT INTO ProgramUsers (Id, FirstName, LastName, Email, Password, WorkExperience, WorkPositionId)
	VALUES(@Id, @FirstName, @LastName, @Email, @Password, @WorkExperience, @WorkPositionId)
END

