SELECT I.InvoiceID AS "Invoice ID", COUNT(IL.InvoiceLineID) AS "Number of Line Items"
FROM InvoiceLine IL
JOIN Invoice I
ON IL.InvoiceID=I.InvoiceID
GROUP BY I.InvoiceID;