CREATE TABLE [dbo].[Answers] (
    [Id]         NVARCHAR (20)   NOT NULL,
    [Text]       NVARCHAR (2000) NOT NULL,
    [Date]       DATETIME        CONSTRAINT [DF_Answers_Date] DEFAULT (getdate()) NOT NULL,
    [UserId]     NVARCHAR (20)   NOT NULL,
    [QuestionId] NVARCHAR (20)   NOT NULL,
    [IsAccepted] BIT             CONSTRAINT [DF_Questions_IsAccepted] DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Answers_Text] CHECK ([Text]<>''),
    FOREIGN KEY ([QuestionId]) REFERENCES [dbo].[Questions] ([Id]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[ProgramUsers] ([Id]) ON DELETE CASCADE
);

