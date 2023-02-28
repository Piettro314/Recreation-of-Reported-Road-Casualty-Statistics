With cte2020
As
(
SELECT Month as [2020Month]
	  ,count(number_of_casualties) as '2020totalcas'
  FROM [UK_Staging2].[rpt].[accidents]
  Where accident_year = 2020
  Group by Month
  ),
cte2021
as
(
SELECT Month as [2021Month]
	  ,count(number_of_casualties) as '2021totalcas'
  FROM [UK_Staging2].[rpt].[accidents]
  Where accident_year = 2021
  Group by Month
 )
 Select c1.[2020Month]
	   ,c1.[2020totalcas]
	   ,c2.[2021Month]
	   ,c2.[2021totalcas]
	   ,round((cast(c2.[2021totalcas] as float)-c1.[2020totalcas])/c1.[2020totalcas]*100,2) as 'Changepct'
From cte2020 c1
	inner join cte2021 c2
		on c1.[2020Month] = c2.[2021Month]
Order by 1
