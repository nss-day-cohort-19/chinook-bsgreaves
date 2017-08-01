Select MAX("Total Sales") AS "Highest Sales Overall", "Sales Agent"
FROM 
(SELECT (E.FirstName || ' ' || E.LastName) AS "Sales Agent", SUM(I.Total) AS "Total Sales"
FROM Employee E
JOIN Customer C
ON C.SupportRepID=E.EmployeeID
JOIN Invoice I
ON I.CustomerID=C.CustomerID
GROUP BY "Sales Agent");