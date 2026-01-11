Sales Data Analysis Project

Proyecto de análisis de datos de ventas realizado de punta a punta,
utilizando Google Sheets para limpieza y validación de datos, y MySQL
para el análisis y modelado relacional.

Objetivo del proyecto
Simular un escenario real de trabajo donde se recibe un dataset de ventas
desordenado y con errores, se limpia, se normaliza y luego se analiza
utilizando SQL para obtener métricas de negocio.

Herramientas utilizadas
- Google Sheets (limpieza y validaciones)
- MySQL

Estructura del proyecto
- sheets/
  - raw_data: datos originales sin procesar
  - clean_data: datos limpios y normalizados
  - data_checks: validaciones y métricas de control

- sql/
  - 01_schema.sql: creación de la base de datos y tablas
  - 02_insert_data.sql: carga de datos
  - 03_analysis.sql: análisis de negocio con SQL

Análisis realizados
- Validación de datos (valores nulos, conteos)
- Revenue total y por país
- Cantidad de órdenes por país
- Clientes únicos
- Revenue por categoría y producto
- Clasificación de órdenes usando CASE
- Ranking de clientes por gasto usando Window Functions
- Análisis con JOINs entre órdenes y clientes
