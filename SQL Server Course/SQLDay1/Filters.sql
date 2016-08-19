/************************************************/
/* PURPOSE:  mY COOL SCREIPT FOR WORKING OUT STUFF		  */
/* AUTHOR:	Lawrence Freeman							 */
/* DATE CREATED: 2016-08-16								*/
-----------------------------------------------------
/* CHANGED FILETER TO GET RID OF PRODUCT NUMBER		*/
/*BY LF ON 2016--8-17 JIRA 2108						*/
/*********************************************/

use AdventureWorks2014


select 
	 *
from [Production].[Product] with (nolock) -- stealth mode, needs to be where you mention the table. This lets you see/view the database even though someone else is working on it
										  -- it gives you dirty (uncommitted data), can use this when you are not doing much with the data, just looking at it for investigative 
										  -- purposes and not too produce reports or anything that work will be based on
where 1=1 -- this is useful when you want to comment out just a part of the logical expression because 1=1 is always true

	/* REMOVED BY OP JIRA-2108 */
	-- and ProductNumber in -- this is the equivalent of or
	--(
	--	'CA-5965'
	--	'CN-6137'
	--	'DC-8732'
	--	'DT-2377'
	--)
	and SafetyStockLevel > 900



