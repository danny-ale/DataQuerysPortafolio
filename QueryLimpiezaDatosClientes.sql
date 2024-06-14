--Segunda Limpieza de Datos Tabla Clientes :)

SELECT [CustomerKey]
      ,Cliente.[FirstName] as Nombre
      ,Cliente.[LastName] as Apellido
	  ,Cliente.[FirstName] + ' ' + Cliente.[LastName] as NombreCompleto
      ,CASE Cliente.[Gender] WHEN 'M' THEN 'Masculine' WHEN 'F' THEN 'Female' END as Genero  --Me genera una nueva columna de vista segun sea el caso
      ,Cliente.[EmailAddress] as Email
      ,Cliente.[DateFirstPurchase] as [Primera Fecha De Compra]
	  ,Geografia.City as Ciudad
  FROM [AdventureWorksDW2014].[dbo].[DimCustomer] as Cliente
  LEFT JOIN [AdventureWorksDW2014].[dbo].[DimGeography] as Geografia 
  on Geografia.GeographyKey=Cliente.GeographyKey	--Une mis tablas por la Key en comun
  ORDER BY
  CustomerKey ASC
