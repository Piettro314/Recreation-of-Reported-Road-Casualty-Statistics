Select accident_year
	  ,month
	  ,count([number_of_casualties])
From [rpt].[accidents]
group by accident_year
	  ,month
order by month