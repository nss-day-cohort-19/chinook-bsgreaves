SELECT I.*, COUNT (IL.InvoiceLineID) AS "Number of Line Items"
FROM Invoice I
JOIN Invoiceline IL
ON I.InvoiceID=IL.InvoiceID
GROUP BY I.InvoiceID;

SELECT M.Name AS "Media Type", COUNT(T.MediaTypeID) AS "Number of Sales"
FROM InvoiceLine IL
JOIN Track T
ON IL.TrackId=T.TrackId
JOIN MediaType M
ON T.MediaTypeID=T.MediaTypeID
GROUP BY "Number of Sales";