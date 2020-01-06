CREATE TABLE [dbo].[UsersProgLanguages] (
    [UserId]         NVARCHAR (20) NOT NULL,
    [ProgLanguageId] INT           NOT NULL,
    FOREIGN KEY ([ProgLanguageId]) REFERENCES [dbo].[ProgLanguages] ([Id]) ON DELETE CASCADE,
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[ProgramUsers] ([Id]) ON DELETE CASCADE
);

