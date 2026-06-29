--1 Regional profitability analysis: Aggregate total sales and profit by city
SELECT 
    City,
    SUM(Sale) as TotalSales,
    SUM(Profit) as TotalProfit
FROM dbo.[OmairSalesDataProject 22]
GROUP BY City
ORDER BY TotalProfit DESC;
------------------------------------------------------------
--2 Top -performing sales representatives: finding the top rep for each product category using window ranking functions
WITH rankedrep AS (
    SELECT 
        prod,
        Rep,
        SUM(Sale) as TotalSales,
        RANK() OVER (PARTITION BY prod ORDER BY SUM(Sale) DESC) as SalesRank
    FROM dbo.[OmairSalesDataProject 22]
    GROUP BY prod, Rep
)
SELECT 
    prod,
    Rep,
    TotalSales
FROM rankedrep
WHERE SalesRank = 1
ORDER BY TotalSales DESC;
-------------------------------------------------------------------------------
--3 Time series growth performance:tracking monthly sales development and trends by region using CTE pipelines and window functions
WITH monthlySales AS (
    SELECT 
        City,
        Year,
        Month,
        SUM(Sale) as MonthlySales
    FROM dbo.[OmairSalesDataProject 22]
    GROUP BY City, Year, Month
),
growthCalculation AS (
    SELECT 
        City,
        Year,
        Month,
        MonthlySales,
        LAG(MonthlySales) OVER (PARTITION BY City ORDER BY Year, Month) as PreviousMonthSales,
        CASE 
            WHEN LAG(MonthlySales) OVER (PARTITION BY City ORDER BY Year, Month) IS NULL THEN NULL
            ELSE ROUND(((MonthlySales - LAG(MonthlySales) OVER (PARTITION BY City ORDER BY Year, Month)) / LAG(MonthlySales) OVER (PARTITION BY City ORDER BY Year, Month)) * 100, 2)
        END as MoMGrowthPct
    FROM monthlySales
)
SELECT 
    City,
    Year,
    Month,
    MonthlySales,
    PreviousMonthSales,
    MoMGrowthPct
FROM growthCalculation
ORDER BY City, Year, Month;