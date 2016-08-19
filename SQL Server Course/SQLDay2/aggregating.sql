use AdventureWorks2014

-- select top 10 -- if you put 10 percent then it will return the top ten percent of your table
	-- *
--from sales.SalesOrderDetail with (nolock)

select
	 avg(sod.LineTotal) AvgSpend
	,STDEV(sod.linetotal) StDevSpend
	,min(sod.linetotal) MinSpend
	,max(sod.linetotal) MaxSpend
	,datename(yy,soh.OrderDate)	 OrderYear
	,datename(qq,soh.OrderDate)  OrderQuarter
	
	from Sales.SalesOrderDetail sod with (nolock)
	join Production.Product p  with (nolock)
		on sod.ProductID = p.ProductID
		-- join another table
	join sales.salesorderheader soh  with (nolock)
		on sod.SalesOrderID = soh.salesOrderID  -- INCASE THE FK COULD HAVE NULLS, USE THE isnull FUNCTION TO REPLACE with an unnatural string and you can use the equality sign
		-- can join any number of tables

	group by 
		datename(qq,soh.OrderDate)
		,DATENAME(yy,soh.OrderDate)
		-- datename(qq,soh.OrderDate) + DATENAME(yy,soh.OrderDate) gives you a column that has cancatenated year and quarter
	-- if you group by something it also has to be in your SELECT list

	/* from [Sales].[SalesOrderDetail], [Production].[Product] -- archaic syntx
	   where sales.SalesOrderDetail.ProductID = production.product.productID */ 

	  -- order by DATENAME(yy,soh.OrderDate) [ don't order, too much overhead for no reason]

	  
	   
