-- Usando el Inner Join --

SELECT
    c.country_name,
    y.year_value,
    e.source_name,
    f.consumption_twh

FROM fact_energy_source f

INNER JOIN dim_country c
    ON f.country_id = c.country_id

INNER JOIN dim_year y
    ON f.year_id = y.year_id

INNER JOIN dim_energy_source e
    ON f.energy_source_id = e.energy_source_id

LIMIT 50;

-- usando el left join --

SELECT
    c.country_name,
    r.region_name

FROM dim_country c

LEFT JOIN dim_region r
    ON c.region_id = r.region_id;
    
-- usando el CASE --

SELECT
    country_name,
    CASE
        WHEN iso_code IS NULL THEN 'Aggregate'
        ELSE 'Country'
    END AS entity_type
FROM dim_country;

-- ahora la SUBquery --

SELECT *
FROM vw_nuclear_consumption
WHERE consumption_twh >
(
    SELECT AVG(consumption_twh)
    FROM vw_nuclear_consumption
)
ORDER BY consumption_twh DESC;

-- con el CTE --

WITH nuclear_cte AS
(
    SELECT
        c.country_name,
        SUM(f.consumption_twh) AS total_nuclear

    FROM fact_energy_source f

    JOIN dim_country c
        ON f.country_id = c.country_id

    WHERE f.energy_source_id = 1

    GROUP BY c.country_name
)
SELECT *
FROM nuclear_cte
ORDER BY total_nuclear DESC;

-- windows function --

SELECT

    c.country_name,

    y.year_value,

    f.consumption_twh,

    RANK() OVER
    (
        PARTITION BY y.year_value
        ORDER BY f.consumption_twh DESC
    ) AS yearly_rank

FROM fact_energy_source f

JOIN dim_country c
    ON f.country_id = c.country_id

JOIN dim_year y
    ON f.year_id = y.year_id

WHERE f.energy_source_id = 1;

-- ahora CAST -- 

SELECT
    CAST(consumption_twh AS DECIMAL(18,2))
FROM fact_energy_source
LIMIT 10;

-- update --

UPDATE dim_region
SET region_name = 'Global Region'
WHERE region_id = 1;

-- DELETE --
START TRANSACTION;
DELETE
FROM fact_energy_source
WHERE consumption_twh IS NULL;
SHOW WARNINGS;
ROLLBACK;

-- transaction --

START TRANSACTION;
UPDATE dim_region
SET region_name = 'Global';
SHOW WARNINGS;
ROLLBACK;
