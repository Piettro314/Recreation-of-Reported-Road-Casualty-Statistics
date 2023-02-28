SELECT *
FROM vw.[accidents] ac
	inner join vw.[casualities] ca
		on ac.accident_index = ca.accident_index
	inner join [dim].[class] c
		on ca.casualty_class = c.pk_casualtyclassID
	inner join dim.sex s
		on ca.casualty_sex = s.[pk_sex_of_casualty]
	inner join dim.severity se
		on ca.casualty_severity = se.pk_severityID
	inner join dim.age_group a
		on ca.age_of_casualty = a.age_of_casualty
	inner join dim.road_type_user r
		on ca.[casualty_type] = r.pk_road_user_type
Where ac.accident_year in(2018,2019,2020,2021) and ac.police_force = 99
