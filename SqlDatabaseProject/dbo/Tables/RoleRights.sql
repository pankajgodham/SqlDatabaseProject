CREATE TABLE [dbo].[RoleRights] (
    [RoleRightId]  INT IDENTITY (1, 1) NOT NULL,
    [RoleId]       INT NULL,
    [ActionFormId] INT NULL,
    PRIMARY KEY CLUSTERED ([RoleRightId] ASC),
    FOREIGN KEY ([ActionFormId]) REFERENCES [dbo].[FormActions] ([ActionFormId]),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([RoleId])
);

