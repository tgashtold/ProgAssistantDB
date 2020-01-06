CREATE TABLE [dbo].[ProgramUsers] (
    [Id]             NVARCHAR (20) NOT NULL,
    [FirstName]      NVARCHAR (30) NOT NULL,
    [LastName]       NVARCHAR (30) NOT NULL,
    [Email]          NVARCHAR (30) NOT NULL,
    [Password]       NVARCHAR (20) NOT NULL,
    [WorkExperience] TINYINT       NULL,
    [WorkPositionId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_ProgramUsers_Email] CHECK ([Email]<>''),
    CONSTRAINT [CK_ProgramUsers_Password] CHECK ([Password]<>''),
    CONSTRAINT [CK_ProgramUsers_WorkExperience] CHECK ([WorkExperience]>=(0)),
    FOREIGN KEY ([WorkPositionId]) REFERENCES [dbo].[WorkPosition] ([Id]) ON DELETE CASCADE,
    UNIQUE NONCLUSTERED ([Email] ASC),
    UNIQUE NONCLUSTERED ([Password] ASC)
);

