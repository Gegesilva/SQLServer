SELECT SpecialOfferID, SUM (UnitPrice)  soma
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID


SELECT ProductID, SUM(OrderQty) as QtdProd FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT COUNT(FirstName) Soma , FirstName FROM Person.Person
GROUP BY FirstName

SELECT AVG (ListPrice)as Media, Color FROM Production.Product 
--WHERE Color = 'Silver'
GROUP BY Color



SELECT MiddleName, COUNT (MiddleName) as ContMid FROM Person.Person
GROUP BY MiddleName
ORDER BY ContMid DESC

SELECT b.ProductID, Name,AVG(OrderQty) as Media FROM sales.SalesOrderDetail b
LEFT JOIN Production.Product a ON a.ProductID = b.ProductID
GROUP BY b.ProductID, Name


SELECT TOP 10 Name, SUM(LineTotal) as Valor FROM Sales.SalesOrderDetail a
LEFT JOIN Production.Product b ON b.ProductID = a.ProductID
GROUP BY a.ProductID, Name
ORDER BY SUM(LineTotal) DESC


SELECT a.ProductID, WorkOrderID ,Name ,
COUNT(a.ProductID) Total,
AVG(OrderQty) Media 
FROM Production.WorkOrder a
LEFT JOIN Production.Product b ON b.ProductID = a.ProductID
GROUP BY a.ProductID, Name, WorkOrderID
ORDER BY WorkOrderID
