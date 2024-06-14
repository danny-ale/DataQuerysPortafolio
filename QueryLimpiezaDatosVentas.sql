--Cuarto Query de limpieza de datos en tabla Ventas Online

SELECT
	   Ventas.[ProductKey] 
      ,Ventas.[OrderDateKey] as [Fecha de Orden]
      ,Ventas.[DueDateKey] as [Fecha de Vencimiento]
      ,Ventas.[ShipDateKey] as [Fecha de Entrega]
      ,Ventas.[CustomerKey] as [Llave de Cliente]
	  ,Cliente.FirstName + ' '+ Cliente.LastName as NombreCompletoCliente	--Me crea una columna con los datos juntados
      ,Ventas.[SalesOrderNumber] as [Numero de Orden]
      ,Ventas.[SalesAmount] as [Monto de Venta]
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales] as Ventas
  LEFT JOIN [AdventureWorksDW2014].[dbo].[DimCustomer] as Cliente on Cliente.CustomerKey= Ventas.CustomerKey	--Me hace un join para recuperar el nombre del cliente
  where
  left ([OrderDateKey], 4) >= YEAR(GETDATE())-2		--Filtra el año de la orden y la filtra desde la fecha actual a dos años atras
  Order by
  ProductKey asc
