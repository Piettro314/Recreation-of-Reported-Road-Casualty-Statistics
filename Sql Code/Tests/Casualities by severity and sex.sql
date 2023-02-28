Select severity as 'severity'
	  ,count(number_of_casualties) as 'count of casualities'
FROM [rpt].[accidents]
Where accident_year = 2018
Group by severity
Order by 2 desc