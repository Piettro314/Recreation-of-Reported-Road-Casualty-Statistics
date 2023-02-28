
SELECT [age group] as 'age group'
	--  ,[sex] as 'sex'
	  ,count([number_of_casualties]) as'Count of Casualities'
FROM [rpt].[accidents] 
Where accident_year in(2018)
Group by [age group]--,sex
Order by 1