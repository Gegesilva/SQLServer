SELECT 
ProductID,
Name,
ListPrice

FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) as Media FROM Production.Product)


SELECT 
a.BusinessEntityID,
FirstName, 
LastName,
JobTitle
FROM HumanResources.Employee a
LEFT JOIN Person.Person b ON a.BusinessEntityID = b.BusinessEntityID
WHERE JobTitle = 'Design Engineer'


SELECT AddressLine1, Name FROM Person.Address a 
LEFT JOIN Person.StateProvince b  ON a.StateProvinceID = b.StateProvinceID
WHERE b.StateProvinceID = (SELECT StateProvinceID FROM Person.StateProvince WHERE Name = 'Alberta' )
