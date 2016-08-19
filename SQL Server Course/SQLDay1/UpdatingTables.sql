use AdventureWorks2014

select 
	 *
from [Production].[Product]
where ProductID = 1 -- gives the row where productID is one

-- begin tran -- to make the transaction happen slowly, won't change anything until it is committed
update[Production].[Product]
set color = 'Green'
where ProductID = 1

-- it hasn't been committed yet so the table doesn't update yet
-- however, you can see the update your (what is called a ) dirty version

-- commit tran 
-- rollback tran undos lock,

commit tran

