-- Aquí se crea la base de nuestro trabajo --
DROP DATABASE IF EXISTS energy_transition_db;
create DATABASE energy_transition_db;
USE energy_transition_db;

-- Ahora en este paso procedemos a crear las tablas--

-- TABLA 1 dim_region:--

CREATE TABLE dim_region (
	region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL UNIQUE
);

-- TABLA 2 dim_country: --

CREATE TABLE dim_country (
	country_id INT auto_increment primary key,
	country_name VARCHAR(100) NOT NULL,
    iso_code CHAR(3),
    region_id INT,
    
    constraint fk_country_region
		foreign key (region_id)
        references dim_region(region_id)
);

-- TABLA 3 dim_year: --

CREATE TABLE dim_year(
	year_id int auto_increment primary key,
    year_value int not null unique,
    decade int not null
);

-- TABLA 4 dim_energy_source: --

CREATE TABLE dim_energy_source(
	energy_source_id int auto_increment primary key,
    source_name varchar(50) not null unique,
    energy_category varchar(50) not null
);

-- TABLA 5 fac_energy_source: --

CREATE TABLE fact_energy_source(

    fact_id BIGINT AUTO_INCREMENT PRIMARY KEY,

    country_id INT NOT NULL,
    year_id INT NOT NULL,
    energy_source_id INT NOT NULL,

    consumption_twh DECIMAL(18,3),
    share_energy DECIMAL(8,3),

    population BIGINT,
    gdp DECIMAL(20,2),

    CONSTRAINT fk_fact_country
        FOREIGN KEY (country_id)
        REFERENCES dim_country(country_id),

    CONSTRAINT fk_fact_year
        FOREIGN KEY (year_id)
        REFERENCES dim_year(year_id),

    CONSTRAINT fk_fact_source
        FOREIGN KEY (energy_source_id)
        REFERENCES dim_energy_source(energy_source_id)

);

-- ahora se crea un índice compuesto sobre país --
-- y año para optimizar las consultas --
-- más frecuentes. -- 

CREATE INDEX idx_fact_country_year
ON fact_energy_source(country_id, year_id);

SHOW TABLES;