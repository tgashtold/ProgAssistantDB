CREATE TABLE [dbo].[Hashtags] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [Hashtag] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Hashtags_Hashtag] CHECK ([Hashtag]<>''),
    UNIQUE NONCLUSTERED ([Hashtag] ASC)
);

