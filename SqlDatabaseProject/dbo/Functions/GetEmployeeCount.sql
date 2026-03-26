CREATE FUNCTION GetEmployeeCount()
RETURNS INT
AS
BEGIN
    DECLARE @count INT;
    SELECT @count = COUNT(*) FROM Employees;
    RETURN @count;
END;