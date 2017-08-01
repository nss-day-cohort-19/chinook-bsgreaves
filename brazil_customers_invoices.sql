SELECT Customer.FirstName, Customer.LastName, Invoice.BillingCountry, Invoice.InvoiceID, Invoice.InvoiceDate
FROM Customer
JOIN Invoice ON Customer.CustomerID=Invoice.CustomerID
WHERE Invoice.BillingCountry='Brazil';