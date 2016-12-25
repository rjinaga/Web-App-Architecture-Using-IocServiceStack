CREATE TABLE [dbo].[SalesItem]
(
	[IdSalesItem] INT NOT NULL PRIMARY KEY, 
    [IdSales] INT NOT NULL, 
    [IdProduct] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [ItemPrice] MONEY NOT NULL, 
    [Amount] MONEY NOT NULL, 
    [CreatedDate] DATETIME NULL, 
    [CreatedBy] INT NULL, 
    CONSTRAINT [FK_SalesItems_Sales] FOREIGN KEY ([IdSales]) REFERENCES [Sales]([IdSales]), 
    CONSTRAINT [FK_SalesItems_Product] FOREIGN KEY ([IdProduct]) REFERENCES [Product]([IdProduct])
)
