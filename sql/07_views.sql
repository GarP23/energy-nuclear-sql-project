CREATE VIEW vw_nuclear_consumption AS

SELECT
    c.country_name,
    y.year_value,
    f.consumption_twh,
    f.share_energy

FROM fact_energy_source f

INNER JOIN dim_country c
    ON f.country_id = c.country_id

INNER JOIN dim_year y
    ON f.year_id = y.year_id

WHERE f.energy_source_id = 1;

SELECT *
FROM vw_nuclear_consumption
LIMIT 20;