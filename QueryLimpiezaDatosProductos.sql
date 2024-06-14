--Tercer query de limpieza de datos en tabla productos :D

SELECT 
	Productos.[ProductKey] 
      ,Productos.[ProductAlternateKey] as CodigoDeProducto
	  ,Productos.[EnglishProductName] as NombreProducto
	  ,ISNULL (ProductCate.[EnglishProductCategoryName], 'N/A') as Categoria		--Verifica que los datos Nulos tengan algun tipo de reconocimiento
	  ,ISNULL (ProductSubCate.[EnglishProductSubcategoryName], 'N/A')as SubCategoria
      ,Productos.[Color]
	  ,ISNULL (Productos.[Size], 'N/A') as Tamaño
	  ,ISNULL (Productos.[ProductLine], 'NA') as Linea
	  ,ISNULL (Productos.[ModelName], 'N/A') as NombreModelo
	  ,ISNULL (Productos.[Status], 'Outdated')as Estatus --Aqui pone que si el estatus es nulo entonces no esta a la venta
  FROM [AdventureWorksDW2014].[dbo].[DimProduct] as Productos
  LEFT JOIN AdventureWorksDW2014.dbo.DimProductSubCategory as ProductSubCate on ProductSubCate.ProductSubcategoryKey = Productos.ProductSubcategoryKey
  LEFT JOIN AdventureWorksDW2014.dbo.DimProductCategory as ProductCate on ProductSubCate.ProductCategoryKey = ProductCate.ProductCategoryKey
  ORDER BY
 Productos.ProductKey ASC


