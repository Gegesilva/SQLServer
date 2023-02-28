SELECT TOP 10 
SUM(LineTotal) as SOMA, 
MIN(LineTotal) as MenorVal, 
AVG(LineTotal) as Media  

FROM Sales.SalesOrderDetail

