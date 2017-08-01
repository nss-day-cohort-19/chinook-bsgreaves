SELECT IL.*, T.Name as "Song Name"
FROM InvoiceLine IL
JOIN Track T
WHERE IL.TrackId=t.TrackId;