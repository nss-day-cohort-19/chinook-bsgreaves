SELECT (E.FirstName || ' ' || E.LastName) AS "Sales Agent", COUNT(C.CustomerID) as "Number of Customer"
FROM Employee E
JOIN Customer C
ON C.SupportRepID=E.EmployeeID
GROUP BY "Sales Agent";