CREATE TABLE [dbo].[QuestionsHashtags] (
    [QuestionId] NVARCHAR (20) NOT NULL,
    [HashtagId]  INT           NOT NULL,
    FOREIGN KEY ([HashtagId]) REFERENCES [dbo].[Hashtags] ([Id]) ON DELETE CASCADE,
    FOREIGN KEY ([QuestionId]) REFERENCES [dbo].[Questions] ([Id]) ON DELETE CASCADE
);

