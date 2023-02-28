Select [age_of_casualty]
		,(case
			when [age_of_casualty] between 0 and 15 then '0-15'
			when [age_of_casualty] between 16 and 24 then '16-24'
			when [age_of_casualty] between 25 and 59 then '25-59'
			when [age_of_casualty] >=60 then '60+'
			else 'Unknown'
		end) as 'casualty_age_group'
from [stg].[casualites]
Group by (case
			when [age_of_casualty] between 0 and 15 then '0-15'
			when [age_of_casualty] between 16 and 24 then '16-24'
			when [age_of_casualty] between 25 and 59 then '25-59'
			when [age_of_casualty] >=60 then '60+'
			else 'Unknown'
		end), [age_of_casualty]
Order by 1

