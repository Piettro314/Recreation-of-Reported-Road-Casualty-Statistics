SELECT sex 
	   ,count(number_of_casualties) as 'Count of Casualities'
FROM [rpt].[accidents]
Where accident_year = 2018
group by sex
order by 2 desc

