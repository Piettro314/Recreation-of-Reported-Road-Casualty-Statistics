Select [road_user_type]
	  ,count(number_of_casualties) as 'Count of Casualities'
FROM [rpt].[accidents]
Where accident_year in(2018)
Group by road_user_type
order by 2 desc