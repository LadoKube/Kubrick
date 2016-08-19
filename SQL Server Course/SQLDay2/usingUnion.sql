--select
	
--	[BusinessEntityID] 
--	,[FirstName]
--	,[LastName]

--from Person.Person --19,972
--union all -- this will merge them into one results table
--select
--	ProductID
--	,Name
--	,ProductNumber
--from [Production].[Product] -- 504

/*********************************************
example
*********************************************/

		select 'A' as col1 
union   select 'A' as col1 -- will only return one row because it deletes duplicates

select 'A' as col1 
union all   select 'A' as col1 -- will return two rows because it doesn't deletes duplicates




