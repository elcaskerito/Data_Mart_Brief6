use AdventureWorks2016DB
select COUNT( FactInternetSales.OrderQuantity) AS Qantité_Vendu,
DimSalesTerritory.SalesTerritoryCountry AS Continent,
DimDate.CalendarYear AS Années 
FROM FactInternetSales  JOIN DimSalesTerritory 
ON
FactInternetSales.SalesTerritoryKey=DimSalesTerritory.SalesTerritoryKey
JOIN DimDate ON
FactInternetSales.DueDateKey=DimDate.DateKey
WHERE DimSalesTerritory.SalesTerritoryCountry='United States'
GROUP BY OrderQuantity,  CalendarYear ,SalesTerritoryCountry 
ORDER BY  
CalendarYear
;

