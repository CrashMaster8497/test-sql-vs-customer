CREATE TABLE [dbo].[Customer] (
    [CustomerID]           INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NOT NULL,
    [PhoneNumber]          VARCHAR (12)   NULL,
    [Email]                NVARCHAR (100) NULL,
    [TotalPurchasesAmount] MONEY          NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CHECK ([Email] IS NULL OR [Email] like '%@%.%'),
    CHECK ([PhoneNumber] IS NULL OR [PhoneNumber] like '+1[2-9][0-9][0-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [PhoneNumber] like '1[2-9][0-9][0-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [PhoneNumber] like '[2-9][0-9][0-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    CHECK (len(Trim([LastName]))>(0))
);

