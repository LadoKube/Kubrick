use AdventureWorks2014

select
		 [Title]
		,[FirstName]
		,[MiddleName]
		,[LastName]
		, difference([FirstName],'Bob') DifferenceScore -- the higher the less the difference/ more similar
from [Person].[Person]
where 1=1 -- you can't use aliases in a where clause because of sql's logical processing order only things after select can use the aliases 
	and DIFFERENCE([FirstName],'Bob') >=2

	-- sorting results has to be the last command you write

	order by DifferenceScore desc, FirstName asc  -- sorts by difference score first then firstname