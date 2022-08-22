CREATE TABLE [dbo].[Address] (
    [AddressID]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  VARCHAR (8)    NOT NULL,
    [City]         VARCHAR (50)   NOT NULL,
    [PostalCode]   VARCHAR (6)    NOT NULL,
    [State]        VARCHAR (20)   NOT NULL,
    [Country]      VARCHAR (20)   NOT NULL,
    PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK (len(Trim([AddressLine]))>(0)),
    CHECK (len(Trim([City]))>(0)),
    CHECK (len(Trim([PostalCode]))>(0)),
    CHECK (len(Trim([State]))>(0)),
    CHECK (upper([Country])='CANADA' OR upper([Country])='UNITED STATES'),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID])
);

