CREATE TABLE [dbo].[Address]
(
	[IdAddress] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AddressLine1] VARCHAR(250) NULL, 
    [AddressLine2] VARCHAR(250) NULL, 
    [City] VARCHAR(250) NULL, 
    [Zip5] VARCHAR(5) NULL, 
    [Zip4] VARCHAR(4) NULL, 
    [StateCode] VARCHAR(10) NULL, 
    [CountryCode] VARCHAR(10) NULL,   
    CONSTRAINT [FK_Address_State] FOREIGN KEY ([StateCode]) REFERENCES [State]([StateCode]), 
    CONSTRAINT [FK_Address_Country] FOREIGN KEY ([CountryCode]) REFERENCES [Country]([CountryCode]), 
)
