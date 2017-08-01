SELECT T.Name AS "Track", COUNT(IL.TrackId) as "Number of Purchases"
FROM InvoiceLine IL
JOIN Track T
ON T.TrackId=IL.TrackId
JOIN Invoice I
ON I.InvoiceID=IL.InvoiceID
GROUP BY "Track"
ORDER BY "Number of Purchases" DESC
LIMIT 5;