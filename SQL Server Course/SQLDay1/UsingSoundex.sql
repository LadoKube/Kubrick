/**888 Script to filter firstnames that sound like Bob


*/

select 
		*
from [Person].[Person]
where soundex([FirstName])  like soundex('Bob')





