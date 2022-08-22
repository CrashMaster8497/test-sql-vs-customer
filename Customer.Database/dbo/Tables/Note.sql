CREATE TABLE [dbo].[Note] (
    [NoteID]     INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID] INT            NOT NULL,
    [Text]       NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([NoteID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID])
);

