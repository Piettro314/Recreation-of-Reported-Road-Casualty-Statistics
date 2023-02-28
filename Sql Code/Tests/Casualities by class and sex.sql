Select c.casualtyclass  as 'class'
	  ,count(ac.number_of_casualties) as 'Count of Casualities'
FROM vw.[accidents] ac
	inner join vw.[casualities] ca
		on ac.accident_index = ca.accident_index
	inner join [dim].[class] c
		on ca.casualty_class = c.pk_casualtyclassID
	inner join dim.sex s
		on ca.casualty_sex = s.[pk_sex_of_casualty]
Where ac.accident_year in(2018)
Group by c.casualtyclass
Order by 2 desc