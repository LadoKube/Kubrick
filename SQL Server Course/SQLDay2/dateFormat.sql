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
	,p.[StandardCost]
	,p.[Color]
	,soh.[OrderDate]
	,cast(soh.[OrderDate] as date) OrderDate
	,datename(yy,soh.OrderDate)  OrderYear
	,datename(qq,soh.OrderDate)  OrderQuarter
	,datename(mm,soh.OrderDate)  OrderMonth
	,datepart(dw,soh.OrderDate)  OrderDay
	,CONVERT(date,soh.orderdate,1)  US -- useful for converting to the country format
	,CONVERT(date,soh.orderdate,3) UK
	,soh.[DueDate]
	,soh.[ShipDate]
	,DATEADD(month, DATEDIFF(month, 0, soh.orderDate), 0) AS StartOfMonth -- to first day of the month of order date
	-- another method
	,DATEFROMPARTS(YEAR(soh.orderDate),MONTH(soh.orderDate),1) 
	-- last day of the month
	,eomonth(soh.orderDate,0) --last day of the month
	
	from Sales.SalesOrderDetail sod with (nolock)
	join Production.Product p  with (nolock)
		on sod.ProductID = p.ProductID
		-- join another table
	join sales.salesorderheader soh  with (nolock)
		on sod.SalesOrderID = soh.salesOrderID  -- INCASE THE FK COULD HAVE NULLS, USE THE isnull FUNCTION TO REPLACE with an unnatural string and you can use the equality sign
		-- can join any number of tables

	where 1=1
		-- and cast(soh.orderDate as date) between '2013-06-10' and '2013-07-10' -- this filter is called a search argument (sarg)
		-- to find all orders placed in the last six months
		and datediff(mm,cast(soh.orderdate as date), GETDATE()) <= 6

	/* from [Sales].[SalesOrderDetail], [Production].[Product] -- archaic syntx
	   where sales.SalesOrderDetail.ProductID = production.product.productID */ 

	  
	   
