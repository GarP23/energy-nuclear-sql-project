INSERT INTO fact_energy_source
(
    country_id,
    year_id,
    energy_source_id,
    consumption_twh,
    share_energy,
    population,
    gdp
)

SELECT

    c.country_id,
    y.year_id,
    1,

    NULLIF(s.nuclear_consumption,''),
    NULLIF(s.nuclear_share_energy,''),

    NULLIF(s.population,''),
    NULLIF(s.gdp,'')

FROM stg_energy_raw s

JOIN dim_country c
    ON s.country = c.country_name

JOIN dim_year y
    ON CAST(s.year AS UNSIGNED) = y.year_value;
    
SELECT COUNT(*)
FROM fact_energy_source;

SELECT *
FROM fact_energy_source
LIMIT 10;

SELECT COUNT(*) FROM fact_energy_source;

-- SOLAR

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
2,
NULLIF(s.solar_consumption,''),
NULLIF(s.solar_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;

-- WIND

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
3,
NULLIF(s.wind_consumption,''),
NULLIF(s.wind_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;

-- HYDRO

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
4,
NULLIF(s.hydro_consumption,''),
NULLIF(s.hydro_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;

-- COAL

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
5,
NULLIF(s.coal_consumption,''),
NULLIF(s.coal_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;


-- GAS

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
6,
NULLIF(s.gas_consumption,''),
NULLIF(s.gas_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;

-- OIL

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
7,
NULLIF(s.oil_consumption,''),
NULLIF(s.oil_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;

-- BIOFUEL

INSERT INTO fact_energy_source
(country_id,year_id,energy_source_id,
consumption_twh,share_energy,population,gdp)

SELECT
c.country_id,
y.year_id,
8,
NULLIF(s.biofuel_consumption,''),
NULLIF(s.biofuel_share_energy,''),
NULLIF(s.population,''),
NULLIF(s.gdp,'')

FROM stg_energy_raw s
JOIN dim_country c ON s.country = c.country_name
JOIN dim_year y ON CAST(s.year AS UNSIGNED)=y.year_value;


SELECT COUNT(*)
FROM fact_energy_source;