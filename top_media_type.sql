SELECT MAX("Number of Sales") AS "Number of Sales", "Media Type" AS "Most Sold Media Type"
FROM (SELECT M.Name AS "Media Type", COUNT(T.MediaTypeID) AS "Number of Sales"
		FROM InvoiceLine IL
		JOIN Track T
		ON IL.TrackId=T.TrackId
		JOIN MediaType M
		ON T.MediaTypeID=M.MediaTypeID
		GROUP BY "Media Type");