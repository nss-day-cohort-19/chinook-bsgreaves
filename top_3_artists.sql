SELECT A.Name AS "Artist", COUNT(IL.TrackId) as "Number of Purchases"
FROM InvoiceLine IL
JOIN Track T
ON T.TrackId=IL.TrackId
JOIN Invoice I
ON I.InvoiceID=IL.InvoiceID
JOIN Album AL
ON T.AlbumID=AL.AlbumID
JOIN Artist A
ON AL.ArtistID=A.ArtistID
GROUP BY "Artist"
ORDER BY "Number of Purchases" DESC
LIMIT 3;