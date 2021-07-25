-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "county" (
    "fips" numeric   NOT NULL,
    "name" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    CONSTRAINT "pk_county" PRIMARY KEY (
        "fips"
     )
);

CREATE TABLE "weather_data" (
    "fips" numeric   NOT NULL,
    "date" date   NOT NULL,
    "total_population" bigint   NOT NULL,
    "area_sqmi" int   NOT NULL,
    "population_density_per_sqmi" int   NOT NULL,
    "mean_temp" int   NOT NULL,
    "min_temp" int   NOT NULL,
    "max_temp" int   NOT NULL,
    "dewpoint" int   NOT NULL,
    "sea_level_pressure" int   NOT NULL,
    "station_pressure" int   NOT NULL,
    "visibility" int   NOT NULL,
    "wind_speed" int   NOT NULL,
    "max_wind_speed" int   NOT NULL,
    "wind_gust" int   NOT NULL,
    "precipitation" int   NOT NULL,
    "precip_flag" bool   NOT NULL,
    "fog" bool   NOT NULL,
    "rain" bool   NOT NULL,
    "snow" bool   NOT NULL,
    "hail" bool   NOT NULL,
    "thunder" bool   NOT NULL,
    "tornado" bool   NOT NULL,
    "mean_temp_3d_avg" numeric   NOT NULL,
    "mean_temp_5d_avg" numeric   NOT NULL,
    "mean_temp_10d_avg" numeric   NOT NULL,
    "mean_temp_15d_avg" numeric   NOT NULL,
    "max_temp_3d_avg" numeric   NOT NULL,
    "max_temp_5d_avg" numeric   NOT NULL,
    "max_temp_10d_avg" numeric   NOT NULL,
    "max_temp_15d_avg" numeric   NOT NULL,
    "min_temp_3d_avg" numeric   NOT NULL,
    "min_temp_5d_avg" numeric   NOT NULL,
    "min_temp_10d_avg" numeric   NOT NULL,
    "min_temp_15d_avg" numeric   NOT NULL,
    "dewpoint_3d_avg" numeric   NOT NULL,
    "dewpoint_5d_avg" numeric   NOT NULL,
    "dewpoint_10d_avg" numeric   NOT NULL,
    "dewpoint_15d_avg" numeric   NOT NULL
);

CREATE TABLE "soil_data" (
    "fips" numeric   NOT NULL,
    "lat" numeric   NOT NULL,
    "lon" numeric   NOT NULL,
    "elevation" int   NOT NULL,
    "slope1" numeric   NOT NULL,
    "slope2" numeric   NOT NULL,
    "slope3" numeric   NOT NULL,
    "slope4" numeric   NOT NULL,
    "slope5" numeric   NOT NULL,
    "slope6" numeric   NOT NULL,
    "slope7" numeric   NOT NULL,
    "slope8" numeric   NOT NULL,
    "aspectN" numeric   NOT NULL,
    "aspectE" numeric   NOT NULL,
    "aspectS" numeric   NOT NULL,
    "aspectW" numeric   NOT NULL,
    "aspectUnknown" numeric   NOT NULL,
    "WAT_LAND" numeric   NOT NULL,
    "NVG_LAND" numeric   NOT NULL,
    "URB_LAND" numeric   NOT NULL,
    "GRS_LAND" numeric   NOT NULL,
    "FOR_LAND" numeric   NOT NULL,
    "CULTRF_LAND" numeric   NOT NULL,
    "CULTIR_LAND" numeric   NOT NULL,
    "CULT_LAND" numeric   NOT NULL,
    "SQ1" int   NOT NULL,
    "SQ2" int   NOT NULL,
    "SQ3" int   NOT NULL,
    "SQ4" int   NOT NULL,
    "SQ5" int   NOT NULL,
    "SQ6" int   NOT NULL,
    "SQ7" int   NOT NULL
);

CREATE TABLE "drought_time_series" (
    "fips" numeric   NOT NULL,
    "date" date   NOT NULL,
    "PRECTOT" numeric   NOT NULL,
    "PS" numeric   NOT NULL,
    "QV2M" numeric   NOT NULL,
    "T2M" numeric   NOT NULL,
    "T2MDEW" numeric   NOT NULL,
    "T2MWET" numeric   NOT NULL,
    "T2M_MAX" numeric   NOT NULL,
    "T2M_MIN" numeric   NOT NULL,
    "T2M_RANGE" numeric   NOT NULL,
    "TS" numeric   NOT NULL,
    "WS10M" numeric   NOT NULL,
    "WS10M_MAX" numeric   NOT NULL,
    "WS10M_MIN" numeric   NOT NULL,
    "WS10M_RANGE" numeric   NOT NULL,
    "WS50M" numeric   NOT NULL,
    "WS50M_MAX" numeric   NOT NULL,
    "WS50M_MIN" numeric   NOT NULL,
    "WS50M_RANGE" numeric   NOT NULL,
    "score" numeric
);

ALTER TABLE "weather_data" ADD CONSTRAINT "fk_weather_data_fips" FOREIGN KEY("fips")
REFERENCES "county" ("fips");

ALTER TABLE "soil_data" ADD CONSTRAINT "fk_soil_data_fips" FOREIGN KEY("fips")
REFERENCES "county" ("fips");

ALTER TABLE "drought_time_series" ADD CONSTRAINT "fk_drought_time_series_fips" FOREIGN KEY("fips")
REFERENCES "county" ("fips");