create or alter view vw.casualities
as
Select [accident_index]
	  ,[accident_year]
	  ,[casualty_reference]
	  ,[casualty_severity]
	  ,[casualty_class]
	  ,[casualty_type]
	  ,(case 
			when sex_of_casualty = -1 then '9'
			else sex_of_casualty
		end) as 'casualty_sex'
	  ,[age_of_casualty]
From [stg].[casualites] c

