CREATE TABLE [dbo].[Table]
(
	[ClientID] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [Forename] VARCHAR(50) NULL, 
    [Surname] VARCHAR(50) NULL, 
    [Password] VARCHAR(50) NULL, 
    [Address Line 1] VARCHAR(50) NULL, 
    [Address Line 2] VARCHAR(50) NULL, 
    [Town] VARCHAR(50) NULL, 
    [Postcode] VARCHAR(50) NULL, 
    [Email] VARCHAR(50) NULL, 
    [Phone number] VARCHAR(50) NULL, 
    [Mobile number] VARCHAR(50) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([ClientID])
)
