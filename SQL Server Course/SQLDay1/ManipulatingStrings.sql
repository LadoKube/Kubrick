use AdventureWorks2014
go
select

	 [BusinessEntityID]
	,[EmailAddressID]
	,EmailAddress
	,substring([EmailAddress],1,CHARINDEX('@',[EmailAddress],0)-1) username
	,substring([EmailAddress],CHARINDEX('@',[EmailAddress],0)+1,LEN([EmailAddress])) [Domain Name]
	,len(substring([EmailAddress],CHARINDEX('@',[EmailAddress],0)+1,LEN([EmailAddress])))
	,datalength(substring([EmailAddress],CHARINDEX('@',[EmailAddress],0)+1,LEN([EmailAddress])))
	,rtrim(ltrim([EmailAddress])) -- removes all the white space
	-- len doesn't count leading and trailing white space
	-- datalength counts leading and trailing white space

from [Person].[EmailAddress]