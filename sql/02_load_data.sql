USE energy_transition_db;

-- DROP TABLE IF EXISTS stg_energy_raw;

CREATE TABLE stg_energy_raw (
    country VARCHAR(255),
    year VARCHAR(10),       -- Cambiado a VARCHAR
    iso_code VARCHAR(10),

    population TEXT,        -- Cambiado a TEXT
    gdp TEXT,               -- Cambiado a TEXT

    nuclear_consumption TEXT,
    nuclear_share_energy TEXT,

    solar_consumption TEXT,
    solar_share_energy TEXT,

    wind_consumption TEXT,
    wind_share_energy TEXT,

    hydro_consumption TEXT,
    hydro_share_energy TEXT,

    coal_consumption TEXT,
    coal_share_energy TEXT,

    gas_consumption TEXT,
    gas_share_energy TEXT,

    oil_consumption TEXT,
    oil_share_energy TEXT,

    biofuel_consumption TEXT,
    biofuel_share_energy TEXT
);

SHOW TABLES;

USE energy_transition_db;

SELECT COUNT(*) FROM stg_energy_raw;