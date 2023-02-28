GO
IF not Exists(Select*
				From[UK Stage Test for loop].INFORMATION_SCHEMA.TABLES
				Where TABLE_TYPE = 'BASE TABLE' and TABLE_NAME ='casualty'
				)
exec('CREATE TABLE [stg].[casualty](
	[accident_year] [bigint] NULL,
	[accident_reference] [varchar](100) NULL,
	[vehicle_reference] [bigint] NULL,
	[casualty_reference] [bigint] NULL,
	[casualty_class] [bigint] NULL,
	[sex_of_casualty] [bigint] NULL,
	[age_of_casualty] [bigint] NULL,
	[age_band_of_casualty] [bigint] NULL,
	[casualty_severity] [bigint] NULL,
	[pedestrian_location] [bigint] NULL,
	[pedestrian_movement] [bigint] NULL,
	[car_passenger] [bigint] NULL,
	[bus_or_coach_passenger] [bigint] NULL,
	[pedestrian_road_maintenance_worker] [bigint] NULL,
	[casualty_type] [bigint] NULL,
	[casualty_home_area_type] [bigint] NULL,
	[casualty_imd_decile] [bigint] NULL,
)'
);
GO

