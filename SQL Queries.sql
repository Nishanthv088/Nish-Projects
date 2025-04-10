--Total Revenue by Country
SELECT Country, ROUND(SUM(TotalPrice), 2) AS Revenue
FROM online_retail_cleaned
GROUP BY Country
ORDER BY Revenue DESC;

--Top 10 Products by Revenue
SELECT TOP 10 Description, SUM(TotalPrice) AS Revenue
FROM online_retail_cleaned
GROUP BY Description
ORDER BY Revenue DESC;

--Monthly Sales Trend
SELECT 
    YEAR(InvoiceDate) AS [Year],
    MONTH(InvoiceDate) AS [Month],
    SUM(TotalPrice) AS MonthlyRevenue
FROM online_retail_cleaned
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY [Year], [Month];