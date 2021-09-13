CREATE PROC usp_InsertDepartment (@DepartmentId INT,@Name VARCHAR(50),@GroupName VARCHAR(50))
AS
BEGIN
DECLARE @DeptID INT
DECLARE @DeptName VARCHAR(50)
INSERT INTO [HumanResources].[Department] ([Name],[GroupName],[ModifiedDate])VALUES (@Name,@GroupName,GETDATE())
END 
GO 
EXECUTE usp_InsertDepartment 9, 'SalesDept', 'SalesGroup' 
EXECUTE usp_InsertDepartment 9, 'MarketingDept', 'Marketing group' 
SELECT *FROM [HumanResources].[Department]
