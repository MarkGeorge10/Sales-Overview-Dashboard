/****** Script for SelectTopNRows command from SSMS  ******/
SELECT customer.CustomerKey,
	  customer.[FirstName],
	  customer.[LastName],
	  customer.[FirstName] + ' '+ customer.[LastName] As FullName,
	  
	  case customer.gender
	   when 'M' then 'Male'
	   when 'F' then 'Female'
	   END AS Gender,
	   customer.DateFirstPurchase as DateFirstPurchase,
	   geo.City as CustomerCity
     
      
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as customer
  left join [AdventureWorksDW2019].[dbo].DimGeography as geo
  on geo.GeographyKey = customer.GeographyKey
  order by CustomerKey asc