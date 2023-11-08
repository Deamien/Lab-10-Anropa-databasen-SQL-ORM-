SELECT P.ProductName, P.UnitPrice, C.CategoryName
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
ORDER BY C.CategoryName, P.ProductName;


SELECT C.CustomerID, C.ContactName, SUM(OD.Quantity * (OD.UnitPrice + O.Freight)) AS TotalOrderValue
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
LEFT JOIN [Order Details] OD
ON O.OrderID = OD.OrderID
GROUP BY C.CustomerID, C.ContactName
ORDER BY TotalOrderValue DESC;


SELECT E.FirstName, E.LastName, T.TerritoryDescription
FROM Employees AS E
JOIN EmployeeTerritories AS ET ON E.EmployeeID = ET.EmployeeID
JOIN Territories AS T ON ET.TerritoryID = T.TerritoryID;
