SELECT I.InvoiceID, (E.FirstName || ' ' || E.LastName) as "Full Name"
FROM Customer C
JOIN Invoice I
ON C.CustomerID=I.CustomerID
JOIN Employee E
ON E.EmployeeID=C.SupportRepID
ORDER BY E.LastName;