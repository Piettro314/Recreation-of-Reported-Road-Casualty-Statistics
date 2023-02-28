/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct[local_authority_highway]
	  ,lah.[Local Highway Authority]
	  ,sum([number_of_casualties])
    FROM [UK_Staging].[stg].[accidents] a
		inner join [dim].[local_authority_highway] lah
			on a.local_authority_highway = lah.pk_local_highway_authorities
	Where accident_year in(2021)
	Group by [local_authority_highway],lah.[Local Highway Authority]
	order by 2