--Primera limpieza de datos por fecha :)

SELECT [DateKey]
      ,[FullDateAlternateKey] as Fecha
	  ,[WeekNumberOfYear] as NumSemana
      ,[EnglishDayNameOfWeek] as Dia
      ,[EnglishMonthName] as Mes,
	  Left([EnglishMonthName],3) as MesAbreviado	--Simplemente Agarra los tres primeros caracteres del EngMonthName
      ,[MonthNumberOfYear] as NumMes
      ,[CalendarQuarter] as CuartoDeA�o
      ,[CalendarYear] as A�o
  FROM [AdventureWorksDW2014].[dbo].[DimDate]
  where CalendarYear>=2022 --Esta clausula nos dice que nos devuelva las que son a�os mayores a 2022
