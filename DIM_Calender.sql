/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DateKey]
      ,[FullDateAlternateKey] As Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] As Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] As WeekN0
      ,[EnglishMonthName] As Month,
	  LEFT(EnglishMonthName,3) As MonthShort
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthNo
      ,[CalendarQuarter] As Quarter
      ,[CalendarYear] As Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where [CalendarYear] >=2019
  order by [CalendarYear] desc