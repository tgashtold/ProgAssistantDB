CREATE TABLE [dbo].[ProgLanguages] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Language] NVARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_ProgLanguanges_Language] CHECK ([Language]<>''),
    UNIQUE NONCLUSTERED ([Language] ASC)
);

