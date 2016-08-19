use AdventureWorks2014

select top 1 with ties --- will give not just the top row but all the rows with the tie
	 [Name]
	 ,[ListPrice]

from production.product  --with (nolock)
order by [ListPrice] desc