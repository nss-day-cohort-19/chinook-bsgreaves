SELECT MAX("Number of Purchases") as "Number of Purchases", "Track" as "Best Selling Track of 2013"
FROM (SELECT T.Name AS "Track", COUNT(IL.TrackId) as "Number of Purchases"
	FROM InvoiceLine IL
	JOIN Track T
	ON T.TrackId=IL.TrackId
	JOIN Invoice I
	ON I.InvoiceID=IL.InvoiceID
	WHERE I.InvoiceDate LIKE "2013%"
	GROUP BY "Track");