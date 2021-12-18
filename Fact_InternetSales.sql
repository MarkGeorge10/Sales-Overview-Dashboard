/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
     
      ,[SalesOrderNumber]
      
      ,[SalesAmount]
     
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where 
		left([OrderDateKey],4) >=YEAR(GETDATE())-2 -- Ensure we always only bring two years of date from extraction
  order by OrderDateKey asc