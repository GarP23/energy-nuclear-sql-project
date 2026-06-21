# Energy Nuclear SQL Project

## TEMA:

Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial (1965–2022)

---

# Descripción General

Este proyecto analiza la evolución histórica del consumo energético mundial entre 1965 y 2022 mediante el diseño e implementación de una base de datos relacional en MySQL.

El objetivo principal es estudiar el papel de la energía nuclear dentro del contexto de la transición energética global, comparándola con otras fuentes energéticas como los combustibles fósiles y las energías renovables.

Para ello se desarrolló un modelo dimensional tipo Star Schema, acompañado de procesos de limpieza de datos, consultas analíticas SQL y visualizaciones en Power BI que permiten extraer insights relevantes sobre la evolución de los sistemas energéticos mundiales.

---

# Dataset

## Fuente

World Energy Consumption Dataset

Fuente original: Our World in Data

Disponible a través de Kaggle.

## Cobertura Temporal

1965 – 2022

## Cobertura Geográfica

Más de 300 países, territorios y agregaciones geográficas.

## Variables Utilizadas

### Variables de contexto

* country
* year
* iso_code
* population
* gdp

### Variables energéticas

* nuclear_consumption

* nuclear_share_energy

* coal_consumption

* coal_share_energy

* gas_consumption

* gas_share_energy

* oil_consumption

* oil_share_energy

* hydro_consumption

* hydro_share_energy

* solar_consumption

* solar_share_energy

* wind_consumption

* wind_share_energy

* biofuel_consumption

* biofuel_share_energy

---

# Objetivos del Proyecto

## Objetivo General

Diseñar e implementar una base de datos relacional que permita analizar la evolución de la energía nuclear y su papel dentro de la transición energética mundial.

## Objetivos Específicos

* Diseñar un modelo dimensional tipo Star Schema.
* Construir una tabla de hechos y múltiples dimensiones.
* Implementar claves primarias y claves foráneas.
* Garantizar la calidad e integridad de los datos.
* Aplicar técnicas de limpieza y validación.
* Realizar análisis exploratorio mediante SQL.
* Implementar consultas analíticas avanzadas.
* Generar visualizaciones interactivas en Power BI.
* Obtener insights relacionados con la transición energética global.

---

# Arquitectura del Proyecto

El proyecto sigue una arquitectura analítica basada en un modelo dimensional.

## Tabla de Hechos

### fact_energy_source

Granularidad:

País + Año + Fuente Energética

Métricas principales:

* consumption_twh
* share_energy_pct

---

## Tablas de Dimensión

### dim_country

* country_id
* country_name
* iso_code

### dim_year

* year_id
* year_value

### dim_energy_source

* energy_source_id
* source_name

Fuentes energéticas:

* Nuclear
* Coal
* Gas
* Oil
* Hydro
* Solar
* Wind
* Biofuel

### dim_region

* region_id
* region_name

---

# Proceso ETL

La preparación inicial de los datos se realizó mediante Python utilizando el script:

scripts/prepare_dataset.py

Principales transformaciones:

* Selección de variables relevantes.
* Eliminación de registros sin país o año.
* Generación de un dataset limpio para carga en MySQL.

Archivo generado:

data/processed/energy_transition_clean.csv

---

# Tecnologías Utilizadas

* MySQL
* MySQL Workbench
* DBeaver
* Python
* Visual Studio Code
* Git
* GitHub
* Power BI
* Docker

---

# Preguntas de Negocio

## Q1. ¿Qué países generan la mayor cantidad de energía nuclear?

Identificar los principales productores históricos de energía nuclear.

## Q2. ¿Cómo ha evolucionado el consumo mundial de energía nuclear desde 1965?

Analizar tendencias históricas y cambios relevantes en la adopción de esta tecnología.

## Q3. ¿Qué países presentan una mayor dependencia de los combustibles fósiles?

Evaluar el peso relativo del carbón, petróleo y gas natural.

## Q4. ¿Qué países lideran la adopción de energías renovables?

Comparar el consumo acumulado de fuentes renovables entre países.

## Q5. ¿Qué relación existe entre el PIB y el consumo energético?

Analizar la relación entre desarrollo económico y demanda energética.

---

# Principales Resultados

Los análisis realizados muestran que:

* Estados Unidos lidera históricamente el consumo de energía nuclear.
* Francia destaca por la importancia de la energía nuclear dentro de su matriz energética.
* China se posiciona como uno de los principales impulsores de las energías renovables.
* Los combustibles fósiles continúan representando una parte significativa del consumo energético mundial.
* Existe una correlación positiva entre PIB y consumo energético.
* La transición energética avanza de forma desigual entre países y regiones.

---

# Dashboard Power BI

El proyecto incluye un dashboard interactivo desarrollado en Power BI para visualizar:

* Top países consumidores de energía nuclear.
* Evolución histórica de la energía nuclear.
* Dependencia de combustibles fósiles.
* Liderazgo en energías renovables.
* Relación entre PIB y consumo energético.

Archivo:

powerbi/dashboard.pbix

---

# Estructura del Repositorio

```text
energy-nuclear-sql-project
│
├── data
│   ├── raw
│   └── processed
│
├── docs
│   ├── PROJECT_BRIEF.md
│   ├── business_questions.md
│   └── data_dictionary.md
│
├── powerbi
│   └── dashboard.pbix
│
├── scripts
│   └── prepare_dataset.py
│
├── sql
│   ├── 01_schema.sql
│   ├── 02_data.sql
│   ├── 04_eda.sql
│   ├── 05_views.sql
│   └── 06_functions.sql
│
├── docs/images
│
└── README.md
```

---

# Autor

**Giovanni Alexander Ron Peralta**

Máster en Data Science e Inteligencia Artificial

Proyecto SQL — Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial
