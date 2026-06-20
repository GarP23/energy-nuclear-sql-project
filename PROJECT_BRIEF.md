# Project Brief

## Project Title

Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial

---

## Contexto de Negocio

La transición energética se ha convertido en uno de los principales desafíos globales debido a la necesidad de reducir las emisiones de gases de efecto invernadero y garantizar un suministro energético sostenible.

Gobiernos, organismos internacionales y empresas del sector energético requieren información confiable para comprender cómo las diferentes fuentes de energía contribuyen a la generación eléctrica, al desarrollo económico y a la reducción de emisiones de carbono.

Este proyecto se centra en analizar la evolución de la energía nuclear y su papel dentro de la transición energética mundial, comparándola con otras fuentes energéticas como los combustibles fósiles y las energías renovables.

---

## Alcance

### Incluido

* Producción de energía nuclear.
* Consumo energético por país.
* Fuentes de energía renovable.
* Consumo de combustibles fósiles.
* Emisiones de CO₂.
* Comparación entre fuentes energéticas.
* Análisis temporal de la evolución energética.
* Comparación entre países y regiones.
* Construcción de un modelo dimensional para análisis SQL.

### Excluido

* Análisis a nivel de planta nuclear.
* Análisis a nivel de reactor nuclear.
* Mercados energéticos en tiempo real.
* Precios de electricidad.
* Predicciones o modelos de machine learning.
* Factores geopolíticos externos.

---

## Granularidad

Cada registro representa:

**País + Año**

Esto permite analizar tendencias históricas y realizar comparaciones entre diferentes países y regiones a lo largo del tiempo.

---

## Modelo de Datos

El proyecto implementará un esquema estrella (*Star Schema*) compuesto por:

### Tabla de Hechos

**Fact_Energy_Production**

Almacena las principales métricas energéticas utilizadas para el análisis.

### Tablas de Dimensiones

#### Dim_Country

* country_id
* country_name
* iso_code

#### Dim_Year

* year_id
* year
* decade

#### Dim_Energy_Source

* energy_source_id
* source_name

#### Dim_Region

*Dimensión creada manualmente*

* region_id
* region_name

#### Dim_Energy_Category

* category_id
* category_name

---

## Entregables Esperados

* Diseño conceptual y lógico de la base de datos.
* Modelo dimensional (Star Schema).
* Scripts SQL para creación de tablas.
* Definición de claves primarias y foráneas.
* Validación y limpieza de datos.
* Consultas analíticas SQL.
* Vistas para análisis de negocio.
* Dashboard interactivo en Power BI.
* Documentación técnica del proyecto.
* Repositorio GitHub completamente documentado.

---

## Criterios de Éxito

El proyecto será considerado exitoso si:

* Implementa un modelo relacional consistente y correctamente normalizado.
* Garantiza la integridad y calidad de los datos.
* Utiliza consultas SQL avanzadas para el análisis.
* Permite responder las preguntas de negocio planteadas.
* Genera insights relevantes sobre la evolución de la energía nuclear.
* Facilita la visualización de resultados mediante Power BI.
* Mantiene una documentación clara y profesional del proyecto.

---

## Dataset

**Fuente:** Our World in Data – World Energy Consumption Dataset

**Granularidad:** País + Año

**Cobertura:** Múltiples países y décadas de información energética histórica.

---

## Autor

**Giovanni Alexander Ron Peralta**

Proyecto SQL — Análisis de la Evolución de la Energía Nuclear en el Contexto de la Transición Energética Mundial
