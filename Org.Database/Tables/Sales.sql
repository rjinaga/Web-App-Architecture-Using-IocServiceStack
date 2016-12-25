CREATE TABLE [dbo].[Sales]
(
	[IdSales] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdCustomer] INT NOT NULL, 
    [Amount] MONEY NOT NULL, 
    [CreatedDate] DATETIME NULL, 
    [CreatedBy] INT NULL, 
    CONSTRAINT [FK_Sales_Customer] FOREIGN KEY ([IdCustomer]) REFERENCES [Customer]([IdCustomer])
)
