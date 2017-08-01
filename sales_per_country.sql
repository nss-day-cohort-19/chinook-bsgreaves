SELECT (I.BillingCountry) AS 'Country', SUM(I.Total) AS 'Total'
FROM Invoice I
GROUP BY 'Country';