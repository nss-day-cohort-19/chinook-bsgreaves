Select MAX("Total Sales") AS "Highest Sales in 2009", "Sales Agent"
FROM 
(SELECT (E.FirstName || ' ' || E.LastName) AS "Sales Agent", SUM(I.Total) AS "Total Sales"
FROM Employee E
JOIN Customer C
ON C.SupportRepID=E.EmployeeID
JOIN Invoice I
ON I.CustomerID=C.CustomerID
WHERE I.InvoiceDate LIKE "2009%"
GROUP BY "Sales Agent");