CREATE TABLE [dbo].[AnswersLikes] (
    [UserId]   NVARCHAR (20) NOT NULL,
    [AnswerId] NVARCHAR (20) NOT NULL,
    FOREIGN KEY ([AnswerId]) REFERENCES [dbo].[Answers] ([Id]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[ProgramUsers] ([Id])
);

