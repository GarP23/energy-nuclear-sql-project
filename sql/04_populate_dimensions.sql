-- primero poblamos dim_year

insert into dim_year (year_value, decade)
select distinct
	cast(year AS UNSIGNED),
    floor(CAST(year AS UNSIGNED)/10)*10
from 
	stg_energy_raw
where year IS NOT NULL AND year != '';

SELECT COUNT(*)
FROM dim_year;

INSERT INTO dim_energy_source
(source_name, energy_category)

VALUES
('Nuclear','Low Carbon'),
('Solar','Renewable'),
('Wind','Renewable'),
('Hydro','Renewable'),
('Coal','Fossil'),
('Gas','Fossil'),
('Oil','Fossil'),
('Biofuel','Renewable');

SELECT *
FROM dim_energy_source;

INSERT INTO dim_region(region_name)
VALUES ('Global');

INSERT INTO dim_country
(country_name, iso_code, region_id)

SELECT DISTINCT
    country,
    iso_code,
    1
FROM stg_energy_raw
WHERE country IS NOT NULL;

SELECT COUNT(*)
FROM dim_country;

SELECT COUNT(*) FROM dim_year;
SELECT COUNT(*) FROM dim_country;
SELECT COUNT(*) FROM dim_energy_source;

USE energy_transition_db;

DESC fact_energy_source;