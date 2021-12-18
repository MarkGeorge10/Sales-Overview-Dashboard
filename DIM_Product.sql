/****** Script for SelectTopNRows command from SSMS  ******/
SELECT product.[ProductKey]
      ,product.[ProductAlternateKey] as ProductItemCode
      
      ,product.[EnglishProductName] as ProductName
	  ,subCategory.EnglishProductSubcategoryName as SubCategoryName
	  ,Category.EnglishProductCategoryName as CategoryName
	  ,product.Color as ProductColor
	  ,product.Size as ProductSize
	  ,product.ProductLine as ProductLine
      ,product.[ModelName] as ProductModelName
 
      ,product.[EnglishDescription] as ProductDescription
      ,ISNULL(product.[Status],'Outdated') as ProductStatus

  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as product
   left join [AdventureWorksDW2019].[dbo].DimProductSubcategory as subCategory on  subCategory.ProductSubcategoryKey = product.ProductSubcategoryKey
   left join [AdventureWorksDW2019].[dbo].DimProductCategory as Category on Category.ProductCategoryKey = subCategory.ProductCategoryKey
  order by product.ProductKey 