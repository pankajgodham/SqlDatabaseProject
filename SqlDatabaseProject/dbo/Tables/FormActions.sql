CREATE TABLE [dbo].[FormActions] (
    [ActionFormId] INT IDENTITY (1, 1) NOT NULL,
    [FormId]       INT NULL,
    [ActionId]     INT NULL,
    PRIMARY KEY CLUSTERED ([ActionFormId] ASC),
    FOREIGN KEY ([ActionId]) REFERENCES [dbo].[Actions] ([ActionId]),
    FOREIGN KEY ([FormId]) REFERENCES [dbo].[Forms] ([FormId])
);

