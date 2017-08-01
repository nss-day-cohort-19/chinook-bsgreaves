SELECT I.BillingCountry AS "Country", COUNT(I.InvoiceID) AS "Number of Invoices"
FROM Invoice I
GROUP BY I.BillingCountry;