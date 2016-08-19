use AdventureWorks2014;
go
select distinct  -- (distinct) removes duplicates whereas select all gives all the rows (default)
	 ProductID
	 ,[Name] [Produce Name] -- to change the name to Produce name in your results table
	 ,substring([Name],1,3) SubName
	 ,substring(RIGHT([Name],4),1,3) -- using substring and right to get penultimate last three characters
	 ,reverse(substring(reverse([Name]),2,3)) usingReverse -- get penultimate last three characters
	 ,[Weight]
	 [Class]
	 ,standardcost
	 ,ListPrice
	 ,ListPrice - StandardCost as Profit -- 'as' is not so necessary here, would still be the column alias without the as 
from [Production].[Product];
go
