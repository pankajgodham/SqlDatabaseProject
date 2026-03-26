CREATE TABLE [dbo].[Users] (
    [UserId]        INT            IDENTITY (1, 1) NOT NULL,
    [Username]      NVARCHAR (100) NULL,
    [Password]      NVARCHAR (200) NULL,
    [RoleId]        INT            NULL,
    [Phone]         NVARCHAR (15)  NULL,
    [Email]         NVARCHAR (15)  NULL,
    [User_Address]  NVARCHAR (15)  NULL,
    [User_pincode]  NVARCHAR (15)  NULL,
    [User_State]    NVARCHAR (15)  NULL,
    [User_fullName] NVARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([RoleId])
);

