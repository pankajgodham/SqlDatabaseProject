create PROCEDURE CheckPermission
    @Username    NVARCHAR(100),
    @FormName    NVARCHAR(100),
    @ActionName  NVARCHAR(50)
AS
BEGIN
    SELECT COUNT(1) AS HasPermission
    FROM Users u
    JOIN RoleRights  rr ON u.RoleId       = rr.RoleId
    JOIN FormActions fa ON rr.ActionFormId = fa.ActionFormId
    JOIN Forms       f ON fa.FormId       = f.FormId
    JOIN Actions     a ON fa.ActionId     = a.ActionId
    WHERE u.Username    = @Username
      AND f.FormName    = @FormName
      AND a.ActionName  = @ActionName;
END