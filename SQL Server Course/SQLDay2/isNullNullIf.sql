use AdventureWorks2014

select
	middlename
	, ISNULL(nullif(middlename,'B'), 'Badname')

	--- should do isnull on the FK if there is a possibility of there being null values
from person.Person
