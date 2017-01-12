CREATE TABLE [dbo].[Customer] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (40) NULL,
    [LastName]  NVARCHAR (40) NULL,
    [City]      NVARCHAR (40) NULL,
    [Country]   NVARCHAR (40) NULL,
    [ZipCode]   VARCHAR (10)  NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC)
);

