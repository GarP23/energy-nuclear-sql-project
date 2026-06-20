# Project Brief

## Project Title

# Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial (1965–2022)

---

## Descripción del Proyecto

La transición energética constituye uno de los principales desafíos del siglo XXI debido a la necesidad de reducir la dependencia de los combustibles fósiles, garantizar la seguridad energética y avanzar hacia sistemas energéticos más sostenibles.

En este contexto, la energía nuclear desempeña un papel relevante como fuente de generación baja en carbono. Sin embargo, su evolución histórica ha estado condicionada por factores tecnológicos, económicos, regulatorios y sociales.

Este proyecto tiene como objetivo diseñar e implementar una base de datos relacional para analizar la evolución del consumo energético mundial entre 1965 y 2022, prestando especial atención al papel de la energía nuclear dentro de la transición energética global.

El análisis se realiza mediante SQL para la explotación de datos y Power BI para la visualización de resultados e identificación de patrones de negocio.

---

## Contexto de Negocio

Gobiernos, organismos internacionales, empresas energéticas e instituciones de investigación necesitan comprender cómo evolucionan las distintas fuentes energéticas para apoyar la toma de decisiones relacionadas con:

* Seguridad energética.
* Descarbonización de la economía.
* Diversificación de la matriz energética.
* Desarrollo sostenible.
* Planificación de infraestructuras energéticas.

El presente proyecto proporciona una visión histórica de la evolución energética mundial y permite identificar tendencias relevantes en el consumo de energía nuclear, energías renovables y combustibles fósiles.

---

## Objetivos del Proyecto

### Objetivo General

Diseñar, implementar y analizar una base de datos relacional que permita estudiar la evolución de la energía nuclear dentro del contexto de la transición energética mundial.

### Objetivos Específicos

* Construir un modelo dimensional tipo Star Schema.
* Garantizar la integridad y calidad de los datos mediante procesos de limpieza y validación.
* Aplicar consultas SQL analíticas utilizando técnicas avanzadas.
* Identificar patrones históricos de consumo energético.
* Comparar la evolución de distintas fuentes energéticas.
* Analizar la relación entre crecimiento económico y consumo energético.
* Visualizar resultados mediante dashboards interactivos en Power BI.

---

## Alcance

### Incluido

* Consumo histórico de energía nuclear.
* Consumo histórico de carbón, petróleo y gas natural.
* Consumo de energías renovables.
* Análisis temporal entre 1965 y 2022.
* Comparación entre países.
* Comparación entre fuentes energéticas.
* Relación entre PIB y consumo energético.
* Diseño e implementación de un modelo dimensional.
* Análisis exploratorio de datos mediante SQL.
* Visualización de resultados mediante Power BI.

### Excluido

* Análisis a nivel de reactor nuclear.
* Análisis a nivel de planta energética.
* Mercados eléctricos en tiempo real.
* Predicciones mediante Machine Learning.
* Modelos econométricos.
* Factores geopolíticos externos.
* Proyecciones futuras de consumo energético.

---

## Preguntas de Negocio

### Q1. ¿Qué países generan la mayor cantidad de energía nuclear?

Identificar los principales actores mundiales en el consumo histórico de energía nuclear.

### Q2. ¿Cómo ha evolucionado el consumo mundial de energía nuclear desde 1965?

Analizar tendencias históricas y detectar períodos de crecimiento, estabilidad o descenso.

### Q3. ¿Qué países presentan una mayor dependencia de combustibles fósiles?

Determinar qué economías continúan dependiendo en mayor medida del carbón, petróleo y gas natural.

### Q4. ¿Qué países lideran la adopción de energías renovables?

Comparar el consumo acumulado de energías renovables entre países.

### Q5. ¿Qué relación existe entre el PIB y el consumo energético?

Evaluar la correlación entre desarrollo económico y demanda energética.

---

## Dataset

### Fuente

Our World in Data – World Energy Consumption Dataset

### Plataforma

Kaggle

### Cobertura Temporal

1965 – 2022

### Cobertura Geográfica

Más de 300 países, territorios y agregaciones geográficas.

---

## Modelo de Datos

El proyecto implementa un modelo dimensional tipo Star Schema.

### Tabla de Hechos

#### fact_energy_source

Cada registro representa:

País + Año + Fuente Energética

Métricas principales:

* consumption_twh
* share_energy_pct

---

### Tablas de Dimensión

#### dim_country

* country_id
* country_name
* iso_code

#### dim_year

* year_id
* year_value

#### dim_energy_source

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

#### dim_region

* region_id
* region_name

---

## Tecnologías Utilizadas

* MySQL
* MySQL Workbench
* DBeaver
* Visual Studio Code
* Python
* Git
* GitHub
* Power BI
* Docker

---

## Principales Resultados Obtenidos

Los análisis realizados permitieron identificar que:

* Estados Unidos lidera históricamente el consumo de energía nuclear.
* Francia destaca como uno de los países con mayor adopción relativa de energía nuclear.
* China se posiciona como uno de los principales impulsores de las energías renovables.
* Los combustibles fósiles continúan representando una parte significativa del consumo energético global.
* Existe una correlación positiva entre PIB y consumo energético.
* La energía nuclear mantiene un papel relevante dentro de las estrategias de descarbonización.

---

## Entregables

* Modelo dimensional relacional.
* Scripts SQL documentados.
* Procesos de limpieza y validación de datos.
* Consultas analíticas SQL.
* Vistas de negocio.
* Funciones SQL.
* Dashboard interactivo en Power BI.
* Documentación técnica.
* Repositorio GitHub.

---

## Criterios de Éxito

El proyecto se considera exitoso si:

* Implementa un modelo dimensional coherente.
* Garantiza la calidad e integridad de los datos.
* Utiliza correctamente SQL básico y avanzado.
* Responde a las preguntas de negocio planteadas.
* Genera insights relevantes para la transición energética.
* Facilita la interpretación de resultados mediante visualizaciones.
* Mantiene una documentación clara y reproducible.

---

## Autor

Giovanni Alexander Ron Peralta

Máster en Data Science e Inteligencia Artificial

Proyecto SQL – Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial
