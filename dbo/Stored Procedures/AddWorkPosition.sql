
CREATE   PROCEDURE AddWorkPosition
    @position NVARCHAR(50)
AS
BEGIN	
	IF NOT EXISTS (
		SELECT Position 
		FROM WorkPosition
		WHERE Position = @position)

	INSERT INTO WorkPosition(Position)
	VALUES(@position)
END;

