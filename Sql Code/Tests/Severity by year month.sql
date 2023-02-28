Select yearmonth
	  ,severity
	  ,count([number_of_casualties])
From [rpt].[accidents]
group by yearmonth
	  ,severity
order by yearmonth