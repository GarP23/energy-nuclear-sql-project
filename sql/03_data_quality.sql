-- Null countries

SELECT *
FROM stg_energy_raw
WHERE country IS NULL;

-- Duplicate country-year

SELECT
country,
year,
COUNT(*)

FROM stg_energy_raw

GROUP BY country,year
HAVING COUNT(*) > 1;

-- Invalid years

SELECT *
FROM stg_energy_raw
WHERE CAST(year AS UNSIGNED) < 1900;

-- Missing GDP

SELECT COUNT(*)
FROM stg_energy_raw
WHERE gdp IS NULL
   OR gdp='';
   
