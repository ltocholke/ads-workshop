IF OBJECT_ID('dbo.CustomerProductSale', 'U') IS NOT NULL
  DROP TABLE dbo.CustomerProductSale
GO

CREATE TABLE dbo.CustomerProductSale (
	   CompanyName				nvarchar(128) NULL,
	   AddressType				nvarchar(50) NOT NULL,
	   City						nvarchar(30) NOT NULL,
	   StateProvince			nvarchar(50) NOT NULL,
	   ProductName				nvarchar(50) NOT NULL,
	   StandardCost				money NOT NULL,
	   ListPrice				money NOT NULL,
	   ProductCategoryName		nvarchar(50),
	   OrderDate				datetime NOT NULL,
	   ShipDate					datetime NOT NULL,
	   ShipMethod				nvarchar(50) NOT NULL,
       SubTotal					money NOT NULL,
       TaxAmt					money NOT NULL,
       Freight					money NOT NULL,
       TotalDue					money NOT NULL,
	   SalesOrderID				int NOT NULL,
	   SalesOrderDetailID		int NOT NULL,
	   OrderQty					smallint NOT NULL,
	   UnitPrice				money NOT NULL,
	   UnitPriceDiscount		money NOT NULL,
	   LineTotal				numeric(38,6) NOT NULL
	   )
WITH 
(	
     CLUSTERED COLUMNSTORE INDEX  
)
GO