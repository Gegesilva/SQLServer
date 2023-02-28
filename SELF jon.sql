SELECT a.ContactName, b.ContactName, a.Region, b.Region
FROM Customers a, Customers b
WHERE a.Region=b.Region

SELECT
a.FirstName, a.LastName,a.HireDate, b.FirstName, b.LastName,b.HireDate
FROM Employees a , Employees b
WHERE DATEPART(YEAR,a.HireDate) = DATEPART(YEAR,b.HireDate)

SELECT 
a.ProductID,
b.ProductID,
a.Discount,
b.Discount
FROM [Order Details] a, [Order Details] b
WHERE a.Discount = b.Discount
