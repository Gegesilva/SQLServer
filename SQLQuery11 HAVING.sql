SELECT Title, FirstName, COUNT(FirstName) as MRS FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY Title, FirstName
HAVING COUNT(FirstName) > 10


SELECT a.ProductID ,[Name], SUM(a.LineTotal) as PreçoMedio FROM Sales.SalesOrderDetail a
LEFT JOIN Production.Product b ON b.ProductID = a.ProductID
GROUP BY a.ProductID, [Name]
HAVING SUM(a.LineTotal) BETWEEN 162000 AND 500000


SELECT a.StateProvinceID ,Name ,SUM(a.StateProvinceID) NumeroVezes FROM person.[Address] a
LEFT JOIN Person.StateProvince b ON b.StateProvinceID = AddressID
GROUP BY a.StateProvinceID, Name
HAVING SUM(a.StateProvinceID) > 1000

SELECT a.ProductID, Name, AVG(LineTotal) Menos1Milhão FROM Sales.SalesOrderDetail a
LEFT JOIN Production.Product b ON b.ProductID = a.ProductID
GROUP BY a.ProductID, Name
HAVING AVG(LineTotal) <= 1000000
