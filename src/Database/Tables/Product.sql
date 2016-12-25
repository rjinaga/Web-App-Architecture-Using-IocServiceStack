CREATE TABLE [dbo].[Product]
(
	[IdProduct] INT NOT NULL PRIMARY KEY, 
    [Description] VARCHAR(50) NOT NULL, 
    [Price] MONEY NOT NULL, 
    [CreatedDate] DATETIME NULL, 
    [CreatedBy] INT NULL
)
