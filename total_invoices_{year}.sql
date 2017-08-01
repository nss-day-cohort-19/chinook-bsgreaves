Select COUNT(InvoiceID) AS "Number of Invoices from 2009 and 2011"
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
OR InvoiceDate LIKE '2011%';