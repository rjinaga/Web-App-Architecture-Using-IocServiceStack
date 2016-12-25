CREATE TABLE [dbo].[MemberRoles]
(
	[IdMemberRole] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdMembership] INT NOT NULL, 
    [IdRole] INT NOT NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    [UpdatedDate] DATETIME NULL, 
    [UpdatedBy] INT NULL, 
    CONSTRAINT [FK_MemberRoles_Roles] FOREIGN KEY ([IdRole]) REFERENCES [Roles]([IdRole]), 
    CONSTRAINT [FK_MemberRoles_Membership] FOREIGN KEY ([IdMembership]) REFERENCES [Membership]([IdMembership])
)
