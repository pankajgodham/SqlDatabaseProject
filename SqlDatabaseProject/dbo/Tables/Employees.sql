CREATE TABLE [dbo].[Employees] (
    [EmpId]   INT          NOT NULL,
    [EmpName] VARCHAR (50) NULL,
    [Salary]  INT          NULL,
    PRIMARY KEY CLUSTERED ([EmpId] ASC)
);




GO
CREATE TRIGGER trg_AfterInsertEmployee
ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'Employee record added successfully';
END;
GO
CREATE NONCLUSTERED INDEX [idx_EmpName]
    ON [dbo].[Employees]([EmpName] ASC);

