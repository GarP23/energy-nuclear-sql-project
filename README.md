# Energy Nuclear SQL Project

## Descripción General

Este proyecto analiza la evolución de la energía nuclear en el contexto de la transición energética mundial mediante el diseño e implementación de una base de datos relacional en MySQL.

El propósito es transformar un conjunto de datos energéticos en bruto en un modelo dimensional estructurado que permita realizar consultas analíticas, identificar tendencias y generar información relevante para comprender el papel de la energía nuclear dentro de las estrategias globales de descarbonización.

La base de datos se diseña siguiendo principios de modelado dimensional, utilizando una tabla de hechos y múltiples tablas de dimensiones para facilitar el análisis mediante SQL.

---

## Dataset

**Fuente:** World Energy Consumption Dataset (Our World in Data)

**Descripción:**

El conjunto de datos contiene información histórica relacionada con la producción y consumo energético, generación eléctrica, emisiones de CO₂, población, PIB y diferentes fuentes de energía para múltiples países.

**Granularidad:**

* Un registro por país y año.

**Variables principales utilizadas:**

* País
* Año
* Generación eléctrica nuclear
* Consumo de combustibles fósiles
* Generación de energías renovables
* Emisiones de CO₂
* Producto Interno Bruto (PIB)
* Población
* Indicadores de consumo energético

---

## Objetivos del Proyecto

### Objetivo General

Diseñar, implementar y analizar una base de datos relacional que permita estudiar la evolución de la energía nuclear y su papel dentro de la transición energética mundial.

### Objetivos Específicos

* Diseñar un modelo de base de datos relacional y dimensional.
* Crear una tabla de hechos con indicadores energéticos relevantes.
* Implementar al menos cuatro tablas de dimensiones.
* Definir claves primarias (PK), claves foráneas (FK) y restricciones de integridad.
* Realizar procesos de limpieza y validación de datos.
* Documentar las decisiones de diseño mediante comentarios en SQL.
* Desarrollar consultas analíticas para explorar tendencias y patrones.
* Generar insights sobre el desarrollo de la energía nuclear, la adopción de energías renovables y la reducción de emisiones.

---

## Modelo de Datos

### Tabla de Hechos

**Fact_ProduccionEnergetica**

Métricas principales:

* Generación de energía nuclear (TWh)
* Consumo energético total
* Generación de energías renovables
* Consumo de combustibles fósiles
* Emisiones de CO₂
* Indicadores económicos (PIB)

### Tablas de Dimensiones

**Dim_Pais**
**Dim_Country**
* country_id
* country_name
* iso_code

**Dim_año**
**Dim_Year**
* year_id
* year
* decade

**Dim_FuenteEnergetica**
**Dim_Energy_Source**
* energy_source_id
* source_name

**Dim_Region**
**Dim_Region**

Esta dimensión no existe en el dataset original y será creada manualmente.

* region_id
* region_name

**Dim_TipoEnergia**
**Dim_Energy_Category**

category_id
category_name

## Tecnologías Utilizadas

* MySQL
* MySQL Workbench
* DBeaver
* Visual Studio Code
* Git
* GitHub
* Power BI
* Docker

---

## Estructura del Repositorio

```text
energy-nuclear-sql-project/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── schema/
│   ├── inserts/
│   ├── queries/
│   └── views/
│
├── docs/
│   ├── PROJECT_BRIEF.md
│   ├── data_dictionary.md
│   └── database_model.md
│
├── powerbi/
│
├── screenshots/
│
└── README.md
```

## Resultados Esperados

Al finalizar el proyecto, la base de datos permitirá:

* Analizar la evolución histórica de la energía nuclear.
* Comparar indicadores energéticos entre países y regiones.
* Evaluar el avance de la transición energética.
* Identificar líderes en generación de energía baja en carbono.
* Construir dashboards interactivos en Power BI.
* Aplicar consultas SQL avanzadas utilizando JOIN, GROUP BY, subconsultas, vistas y funciones analíticas.

---

## Autor

**Giovanni Alexander Ron Peralta**

Proyecto SQL — Análisis de Datos Energéticos y Modelado Relacional
