use AdventureWorks2014
select
	 *
from [Production].[Product] with (nolock)
where 1=1
	-- and ListPrice between 10 and 20 -- inclusive
	-- can also do
	-- and ListPrice >= 10 and ListPrice >= 20

	-- multiple ands and an or can give unexpected results the code below is badly written because there are no parentheses
	--or color = 'Red'
	--and ListPrice >= 10
	--and ListPrice <= 20

	--better to write:

	and (
			color = 'Red'
			or
			(	
				ListPrice >=10
			and ListPrice <= 20 
			)
		)


select
	 *
from [Production].[Product] with (nolock)
where 1=1 
	--and Color = NULL -- this is wrong. do not use equality operators with null in sql
	-- should stay instead:

	and Color is not null -- is and is not is just for null testing 



