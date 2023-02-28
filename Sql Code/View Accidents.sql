Create or alter view vw.accidents 
as
Select [accident_index]
	  ,[accident_year]
	  ,[acc_date]
	  ,[time]
	  ,[longitude]
	  ,[latitude]
	  ,[police_force]
	  ,[local_authority_highway]
	  ,[road_type]
	  ,[speed_limit]
	  ,[did_police_officer_attend_scene_of_accident]
	  ,(case
			when first_road_class in(1,2) then 'Motorway'
			when urban_or_rural_area = 1 then 'Urban'
			When urban_or_rural_area = 2 Then 'Rural'
			When urban_or_rural_area in(-1,3) Then 'Unknown'
		End) as 'Calc_road_type'
	  ,[number_of_vehicles]
	  ,[number_of_casualties]
From [stg].[accidents] a







