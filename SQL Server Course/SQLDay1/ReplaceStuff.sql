
declare @haystack varchar(100) = 'Kubrick-group-training-course'  -- declare a variable
select @haystack
select replace(replace(@haystack,'-',' '),'i','I') -- can nest your replace statement if you want to do it twice

select stuff(@haystack,1,0,'Awesome ')