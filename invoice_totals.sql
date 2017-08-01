SELECT I.InvoiceID, (E.FirstName || ' ' || E.LastName) as "Sales Agent", (C.FirstName || ' ' || C.LastName) as "Customer", I.BillingCountry as 'Country', I.Total
FROM Customer C
JOIN Invoice I
ON C.CustomerID=I.CustomerID
JOIN Employee E
ON E.EmployeeID=C.SupportRepID
ORDER BY I.InvoiceID;