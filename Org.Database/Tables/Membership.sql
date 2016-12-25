CREATE TABLE [dbo].[Membership]
(
	[IdMembership] INT NOT NULL PRIMARY KEY IDENTITY, 
	[UserName] varchar(50),
    [FirstName] NVARCHAR(100) NULL, 
    [LastName] NVARCHAR(100) NULL, 
    [Email] VARCHAR(100) NULL,     
    [CreatedDate] DATETIME NOT NULL, 
    [IdAddress] INT NULL, 
    CONSTRAINT [FK_Membership_Address] FOREIGN KEY ([IdAddress]) REFERENCES [Address]([IdAddress])
)
