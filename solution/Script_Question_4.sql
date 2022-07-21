use AdventureWorks2016DB
select sum( SalesAmount) AS Chiffre_D_affaire,
DimSalesTerritory.SalesTerritoryRegion AS Pays,
DimDate.CalendarYear AS Années, 
DimCustomer.Gender
FROM FactInternetSales  
JOIN 
DimSalesTerritory 
ON
FactInternetSales.SalesTerritoryKey=DimSalesTerritory.SalesTerritoryKey
JOIN 
DimDate 
ON
FactInternetSales.DueDateKey=DimDate.DateKey
JOIN DimCustomer 
ON FactInternetSales.CustomerKey=DimCustomer.CustomerKey
GROUP BY  CalendarYear,SalesTerritoryRegion, Gender
ORDER BY CalendarYear
;