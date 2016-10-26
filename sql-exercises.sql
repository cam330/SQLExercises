1. SELECT * FROM Categories
2. SELECT ContactName, CustomerID, CompanyName  FROM Customers WHERE City = 'London'
3. SELECT * FROM Suppliers WHERE Fax != 'null' AND ContactTitle = 'Marketing Manager' OR ContactTitle = 'Sales Representative'
4. SELECT * FROM Orders WHERE RequiredDate BETWEEN '1997-01-01 00:00:00.00' AND '1998-01-01 00:00:00.00' AND Freight < 100
5. SELECT CompanyName, ContactName fROM Customers WHERE Country IN ('Mexico', 'Sweden', 'Germany')
6. SELECT COUNT(*) FROM Products WHERE Discontinued = 1
7. SELECT CategoryName, Description FROM Categories WHERE CategoryName LIKE 'Co%'
8. SELECT CompanyName, City, Country, PostalCode FROM Suppliers WHERE Address LIKE '%rue%' ORDER BY CompanyName
9. SELECT OrderID, SUM(Quantity) FROM [Order Details] GROUP BY OrderID
10. SELECT ShipName, ShipAddress FROM Orders WHERE ShipVia = 1
11. SELECT CompanyName, ContactName, ContactTitle, Region FROM Suppliers
12. SELECT * FROM Products WHERE CategoryID = 2
13. SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders) 
14. INSERT INTO Shippers(CompanyName) VALUES ('Amazon')
15. UPDATE Shippers SET CompanyName = 'Amazon Prime Shipping' WHERE ShipperID = 4
16. SELECT S.CompanyName, ROUND(sum(O.Freight),0) as 'Total' FROM Orders O INNER JOIN Shippers S ON O.ShipVia = S.ShipperID GROUP BY S.CompanyName
17. SELECT CONCAT(FirstName,', ', LastName) as 'Display Name' FROM Employees
18. INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, PostalCode, Country, Phone) VALUES ('CAMWI', 'Cam Wilcox', 'Cam Wilcox', 'Owner', '2240 Abbott St.', 'San Diego', '92017', 'USA', '231-622-1741')

	INSERT INTO Orders (CustomerID, EmployeeID, ShipVia, ShipName, ShipAddress, ShipCity, ShipPostalCode, ShipCountry) SELECT CustomerID, 3, 2,ContactName, Address, City, PostalCode, Country  FROM Customers WHERE ContactName = 'Cam Wilcox'

	INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount) SELECT Orders.OrderID, 6, Products.UnitPrice, 1, 0 FROM Orders, Products WHERE CustomerID = 'CAMWI' AND ProductID = 6
19.DELETE FROM [Order Details] WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 'CAMWI')

	DELETE FROM Orders WHERE CustomerID = 'CAMWI'

	DELETE FROM Customers WHERE CustomerID = 'CAMWI'
20. SELECT ProductName, UnitsInStock FROM Products WHERE UnitsInStock - UnitsOnOrder > 100