SELECT MAX("Total Sales") AS "Total Sales", "Country" AS "Country With Most Sales"
FROM (SELECT I.BillingCountry AS "Country", SUM(I.Total) AS "Total Sales"
	FROM Invoice I
	GROUP BY "Country");