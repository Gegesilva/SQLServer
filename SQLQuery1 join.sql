SELECT a.BusinessEntityID ID, 
FirstName Nome, 
LastName Sobrenome, 
EmailAddress email 
FROM Person.Person a
INNER JOIN Person.EmailAddress b ON b.BusinessEntityID = a.BusinessEntityID

SELECT DISTINCT TOP 10 ListPrice, a.Name, c.Name as categoria
FROM Production.Product a 
INNER JOIN Production.ProductSubcategory c ON c.ProductSubcategoryID = a.ProductSubcategoryID
INNER JOIN Sales.SalesOrderDetail b  ON b.ProductID = a.ProductID
ORDER BY ListPrice desc

SELECT a.BusinessEntityID, FirstName, LastName,PhoneNumber FROM Person.Person a 
INNER JOIN Person.PersonPhone b ON b.BusinessEntityID = a.BusinessEntityID

SELECT BusinessEntityID, Name, a.PhoneNumberTypeID, PhoneNumber FROM Person.PhoneNumberType a 
LEFT JOIN Person.PersonPhone b ON b.PhoneNumberTypeID = a.PhoneNumberTypeID


SELECT TOP 10
AddressID,
City,
a.StateProvinceID,
Name
FROM Person.StateProvince a 
LEFT JOIN Person.Address b  ON b.StateProvinceID = a.StateProvinceID




SELECT * FROM A a
INNER JOIN B b ON a.nome = b.nome

SELECT * FROM A a
FULL OUTER JOIN B b ON a.nome = b.nome


SELECT * FROM A a
LEFT JOIN B b ON a.nome = b.nome

SELECT FirstName, CreditCardID FROM Person.Person a 
LEFT JOIN sales.PersonCreditCard b  ON a.BusinessEntityID = b.BusinessEntityID
WHERE CreditCardID IS NULL


