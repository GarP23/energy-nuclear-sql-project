# Data Dictionary

## Descripción General

Este proyecto utiliza un modelo dimensional tipo Star Schema para analizar la evolución del consumo energético mundial entre 1965 y 2022, con especial atención al papel de la energía nuclear dentro de la transición energética global.

El modelo está compuesto por:

- 1 tabla de hechos (`fact_energy_source`)
- 4 tablas de dimensiones (`dim_country`, `dim_year`, `dim_energy_source`, `dim_region`)

---

# Tabla de Hechos

## fact_energy_source

### Descripción

Tabla principal del modelo dimensional.

Cada registro representa el consumo y la participación de una fuente energética específica para un país y un año determinados.

### Granularidad

Una fila por:

- País
- Año
- Fuente energética

### Campos

| Campo | Tipo | Descripción |
|---------|---------|---------|
| fact_id | INT | Identificador único del registro |
| country_id | INT | Clave foránea hacia `dim_country` |
| year_id | INT | Clave foránea hacia `dim_year` |
| energy_source_id | INT | Clave foránea hacia `dim_energy_source` |
| consumption_twh | DECIMAL | Consumo energético en TWh |
| share_energy_pct | DECIMAL | Porcentaje de participación dentro de la matriz energética |

---

# Tablas de Dimensión

## dim_country

### Descripción

Contiene información de los países incluidos en el análisis.

### Campos

| Campo | Tipo | Descripción |
|---------|---------|---------|
| country_id | INT | Clave primaria |
| country_name | VARCHAR | Nombre del país |
| iso_code | VARCHAR | Código ISO del país |

### Ejemplos

- Spain
- France
- United States
- China

---

## dim_year

### Descripción

Dimensión temporal utilizada para realizar análisis históricos.

### Campos

| Campo | Tipo | Descripción |
|---------|---------|---------|
| year_id | INT | Clave primaria |
| year_value | INT | Año correspondiente |

### Rango

1965 – 2022

---

## dim_energy_source

### Descripción

Catálogo de las fuentes energéticas utilizadas en el proyecto.

### Campos

| Campo | Tipo | Descripción |
|---------|---------|---------|
| energy_source_id | INT | Clave primaria |
| source_name | VARCHAR | Nombre de la fuente energética |

### Valores

| Fuente |
|----------|
| Nuclear |
| Coal |
| Gas |
| Oil |
| Hydro |
| Solar |
| Wind |
| Biofuel |

---

## dim_region

### Descripción

Dimensión geográfica utilizada para futuras agrupaciones regionales.

### Campos

| Campo | Tipo | Descripción |
|---------|---------|---------|
| region_id | INT | Clave primaria |
| region_name | VARCHAR | Nombre de la región |

---

# Fuente de Datos

## Dataset

Global Energy Consumption Dataset

Fuente:

- Our World in Data
- Kaggle

### Variables originales utilizadas

- country
- year
- iso_code
- gdp
- population

### Variables energéticas utilizadas

- nuclear_consumption
- nuclear_share_energy

- coal_consumption
- coal_share_energy

- gas_consumption
- gas_share_energy

- oil_consumption
- oil_share_energy

- hydro_consumption
- hydro_share_energy

- solar_consumption
- solar_share_energy

- wind_consumption
- wind_share_energy

- biofuel_consumption
- biofuel_share_energy

---

# Calidad de Datos

Durante la fase ETL se realizaron las siguientes validaciones:

- Eliminación de valores nulos relevantes.
- Conversión de tipos de datos.
- Normalización del modelo.
- Verificación de claves primarias.
- Verificación de claves foráneas.
- Control de duplicados.
- Validación de registros cargados.

---

# Volumen de Datos

| Tabla | Registros |
|---------|---------|
| stg_energy_raw | 22.012 |
| dim_country | 306 |
| dim_year | 123 |
| dim_energy_source | 8 |
| fact_energy_source | ~176.096 |

---

# Modelo de Datos

El proyecto sigue una arquitectura tipo Star Schema:

dim_country
        |
dim_year ---- fact_energy_source ---- dim_energy_source
        |
   dim_region

Este modelo facilita consultas analíticas eficientes y visualizaciones en Power BI.