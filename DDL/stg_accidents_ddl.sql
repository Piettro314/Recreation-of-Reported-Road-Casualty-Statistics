CREATE TABLE [stg].[accidents](
	[accident_year] [bigint] NULL,
	[accident_reference] [varchar](100) NULL,
	[longitude] [varchar](100) NULL,
	[latitude] [varchar](100) NULL,
	[police_force] [bigint] NULL,
	[accident_severity] [bigint] NULL,
	[number_of_vehicles] [bigint] NULL,
	[number_of_casualties] [bigint] NULL,
	[date] [datetime] NULL,
	[day_of_week] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[local_authority_district] [bigint] NULL,
	[local_authority_ons_district] [varchar](20) NULL,
	[local_authority_highway] [varchar](20) NULL,
	[road_type] [bigint] NULL,
	[speed_limit] [bigint] NULL,
	[pedestrian_crossing_human_control] [bigint] NULL,
	[pedestrian_crossing_physical_facilities] [bigint] NULL,
	[light_conditions] [bigint] NULL,
	[weather_conditions] [bigint] NULL,
	[road_surface_conditions] [bigint] NULL,
	[special_conditions_at_site] [bigint] NULL,
	[carriageway_hazards] [bigint] NULL,
	[urban_or_rural_area] [bigint] NULL,
	[did_police_officer_attend_scene_of_accident] [bigint] NULL
) 
GO


