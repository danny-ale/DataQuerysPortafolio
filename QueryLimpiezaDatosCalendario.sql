--Primera limpieza de datos por fecha :)

SELECT [DateKey]
      ,[FullDateAlternateKey] as Fecha
	  ,[WeekNumberOfYear] as NumSemana
      ,[EnglishDayNameOfWeek] as Dia
      ,[EnglishMonthName] as Mes,
	  Left([EnglishMonthName],3) as MesAbreviado	--Simplemente Agarra los tres primeros caracteres del EngMonthName
      ,[MonthNumberOfYear] as NumMes
      ,[CalendarQuarter] as CuartoDeAño
      ,[CalendarYear] as Año
  FROM [AdventureWorksDW2014].[dbo].[DimDate]
  where CalendarYear>=2022 --Esta clausula nos dice que nos devuelva las que son años mayores a 2022
