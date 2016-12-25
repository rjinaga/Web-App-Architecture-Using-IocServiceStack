CREATE TABLE [dbo].[Customer]
(
	[IdCustomer] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(250) NULL, 
    [IdAddress] INT NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    CONSTRAINT [FK_Customer_Address] FOREIGN KEY ([IdAddress]) REFERENCES [Address]([IdAddress])
)
