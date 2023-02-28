Create or Alter view rpt.accidents 
as
SELECT  ac.accident_year
	   ,ac.longitude
	   ,ac.latitude
	   ,p.police_force
	   ,ac.acc_date
	   ,ac.[time]
	   ,convert(varchar(4),cal.[Year]) + SUBSTRING(CONVERT(varchar(10),cal.[FirstOfMonth]),6,2) as 'yearmonth'
	   ,cal.[Month]
	   ,lo.[Local Highway Authority]
	   ,ac.Calc_road_type
	   ,ac.speed_limit
	   ,se.severity as 'severity'
	   ,c.casualtyclass as 'class'
	   ,s.sex_of_casualty as 'sex'
	   ,a.casualty_age_group as 'age group'
	   ,r.road_user_type
	   ,ac.number_of_vehicles
	   ,ac.number_of_casualties
FROM vw.[accidents] ac
	inner join vw.[casualities] ca
		on ac.accident_index = ca.accident_index
	inner join dim.Calendar cal
		on ac.acc_date = cal.Date
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
	inner join [dim].[local_authority_highway] lo
		on ac.local_authority_highway = lo.pk_local_highway_authorities
	inner join [dim].[police_force] p
		on ac.police_force = p.pk_police_force
Where ac.accident_year in(2018,2019,2020,2021)

