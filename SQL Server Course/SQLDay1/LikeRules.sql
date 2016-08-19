use AdventureWorks2014

select
	 *

from [Production].[Product] with (nolock)
	and ProductNumber like '[A-C]_C%[89]' -- has a lot of overhead as it will alwasy scan. 
								-- _ is a single character wildcard
								-- % any number of characters, so it has to be the last one, if there is another behind it, it can be a range
								--[] rules for a single character, here we want the first character to be A/B/C
								--[89] means 8 or 9 must be your last character
								--^ negates everything so [^A-C] means not A-C
