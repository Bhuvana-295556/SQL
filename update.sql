CREATE PROC usp_UpdateDepartment (@DepartmentId INT,@Name VARCHAR(50),@GroupName VARCHAR(50))
AS
BEGIN 
UPDATE [HumanResources].[Department]SET [GroupName] = 'SalesGroup' , [Name] ='SalesDepartment'WHERE [DepartmentId] = 3;
END 
GO 
SELECT *FROM [HumanResources].[Department]
