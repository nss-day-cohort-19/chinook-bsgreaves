SELECT IL.*, T.Name AS "Song Name", AR.Name AS "Artist Name"
FROM InvoiceLine IL
JOIN Track T
ON IL.TrackId=T.TrackId
JOIN Album A
ON A.AlbumID=T.AlbumID
JOIN Artist AR
ON AR.ArtistID=A.ArtistID;