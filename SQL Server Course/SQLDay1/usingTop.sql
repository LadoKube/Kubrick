use AdventureWorks2014

select top 1 -- give me the first row
		 [Title]
		,[FirstName]
		,[MiddleName]
		,[LastName]
		, difference([FirstName],'Bob') DifferenceScore -- the higher the less the difference/ more similar
from [Person].[Person]
where 1=1
order by DifferenceScore desc -- this will then give you the last row because you've changed the order and SQL orders before it does top



exec sp_who2