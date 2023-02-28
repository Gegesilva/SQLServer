SELECT 
SalesOrderID, 
OrderDate, 
CONCAT(DATEPART(MONTH,OrderDate),'/' ,DATEPART(YEAR,OrderDate)) as Competencia
FROM Sales.SalesOrderHeader