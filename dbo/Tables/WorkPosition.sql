CREATE TABLE [dbo].[WorkPosition] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Position] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_WorkPosition_Position] CHECK ([Position]<>'')
);

