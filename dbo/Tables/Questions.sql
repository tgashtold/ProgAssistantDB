CREATE TABLE [dbo].[Questions] (
    [Id]          NVARCHAR (20)  NOT NULL,
    [Title]       NVARCHAR (500) NOT NULL,
    [Description] VARCHAR (2000) NOT NULL,
    [Date]        DATETIME       CONSTRAINT [DF_Questions_Date] DEFAULT (getdate()) NOT NULL,
    [UserId]      NVARCHAR (20)  NOT NULL,
    [IsClosed]    BIT            CONSTRAINT [DF_Questions_IsClosed] DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Questions_Description] CHECK ([Description]<>''),
    CONSTRAINT [CK_Questions_Title] CHECK ([Title]<>''),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[ProgramUsers] ([Id]) ON DELETE CASCADE
);

