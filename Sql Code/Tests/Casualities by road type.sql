/****** Script for SelectTopNRows command from SSMS  ******/
SELECT /*distinct urban_or_rural_area
	  ,*/Calc_road_type
	--  ,first_road_class
	  ,count([number_of_casualties]) as 'Total Casualty'
  FROM [rpt].[accidents]
  Where accident_year = 2018
  Group by Calc_road_type /*urban_or_rural_area,first_road_class*/
  Order by 2 desc