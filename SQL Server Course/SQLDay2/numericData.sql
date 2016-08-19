use AdventureWorks2014

-- select top 10 -- if you put 10 percent then it will return the top ten percent of your table
	-- *
--from sales.SalesOrderDetail with (nolock)

select
	 sod.[CarrierTrackingNumber]
	,sod.[OrderQty]
	,sod.[LineTotal]
	,sod.[UnitPrice]
	,p.[Name] ProductName
	,p.[ListPrice]
	,p.StandardCost
	,cast(p.[StandardCost] as decimal(10,2)) -- using decimal type
	,p.[Color]
	,soh.[OrderDate]
	,soh.[DueDate]
	,soh.[ShipDate]
	
	from Sales.SalesOrderDetail sod with (nolock)
	join Production.Product p  with (nolock)
		on sod.ProductID = p.ProductID
		-- join another table
	join sales.salesorderheader soh  with (nolock)
		on sod.SalesOrderID = soh.salesOrderID  -- INCASE THE FK COULD HAVE NULLS, USE THE isnull FUNCTION TO REPLACE with an unnatural string and you can use the equality sign
		-- can join any number of tables

	/* from [Sales].[SalesOrderDetail], [Production].[Product] -- archaic syntx
	   where sales.SalesOrderDetail.ProductID = production.product.productID */ 

	  
	   
