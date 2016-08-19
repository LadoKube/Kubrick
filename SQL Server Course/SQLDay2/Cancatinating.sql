use AdventureWorks2014
-- cancatination

select
	 [FirstName]
	,[MiddleName]
	,[LastName]
	,[FirstName] + ' ' + isnull([MiddleName],'') +' ' + [LastName] PersonName -- this replaces the null with an empty space

from [Person].[Person]