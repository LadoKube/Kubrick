-- using case
-- create a column that puts the price into buckets


select
	 Name
	 ,ListPrice
	 , Name + ' ' + CAST(listprice as varchar(20)) 
	 ,case 
	 -- can cast to truncate to the int
	 -- can also use > <= etc to be more precise (and not cast)
			when cast(ListPrice as int) = 0 then 'FREE!'  -- can have as many conditions as you want, just add the when ... then ... line
			when cast(ListPrice as int) between 1 and 1000 then 'cheap'
			when cast(ListPrice as int) between 1001 and 2000 then 'Quite Price'
			when cast(ListPrice as int) between 2001 and 3000 then 'Most Expensive'
			when cast(ListPrice as int) > 3000 then ' Ridiculous'

		end as PriceDescription  -- name of the column
from [Production].[Product]

