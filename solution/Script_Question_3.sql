use AdventureWorks2016DB
select sum( SalesAmount) AS Chiffre_D_affaire,
DimSalesTerritory.SalesTerritoryRegion AS Pays,
DimDate.CalendarYear AS Années
FROM FactInternetSales  JOIN DimSalesTerritory 
ON
FactInternetSales.SalesTerritoryKey=DimSalesTerritory.SalesTerritoryKey
JOIN DimDate ON
FactInternetSales.DueDateKey=DimDate.DateKey
GROUP BY   CalendarYear,SalesTerritoryRegion
ORDER BY CalendarYear
;

