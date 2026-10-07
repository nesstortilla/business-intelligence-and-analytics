# 🏛️ Módulo 5: Explotación de Almacenes de Datos y Business Intelligence

Antes de que un científico de datos pueda entrenar un algoritmo o un analista pueda pintar un dashboard en Power BI, alguien tiene que diseñar la base del edificio: **el Data Warehouse**.

En este módulo resolvemos el reto de transformar bases de datos transaccionales (OLTP), dispersas y normalizadas en un modelo dimensional analítico (OLAP) optimizado para agregaciones masivas según la metodología de **Ralph Kimball**.

---

## 🗂️ Contenido de los Notebooks y Recursos

1. **`01_diseno_dimensional_etl.ipynb`**:
   - **Objetivo**: Diseñar e implementar un esquema en estrella (*Star Schema*) y construir un pipeline ETL completo en Python.
   - **Técnicas**: Extracción de hojas de cálculo de ventas de tiendas (`SSSALES`, clientes, divisiones, tiempo), limpieza de inconsistencias de datos, creación de claves subrogadas (*surrogate keys*) y persistencia de las tablas de dimensiones y de hechos en una base de datos relacional analítica mediante `DuckDB` y `SQLite`.
   
2. **`02_consultas_analiticas_olap.ipynb`**:
   - **Objetivo**: Extraer respuestas de negocio de alto rendimiento utilizando SQL analítico avanzado directamente sobre el almacén de datos.
   - **Técnicas**: Agregaciones multidimensionales con `ROLLUP` y `CUBE`, funciones de ventana (*Window Functions*: `DENSE_RANK`, acumulados con `SUM() OVER`, comparativas intermensuales con `LAG`), y generación de datamarts listos para dashboards ejecutivos.

3. **`sql/`**:
   - `01_star_schema_ddl.sql`: Scripts DDL limpios para la creación de dimensiones y tabla de hechos con claves primarias y foráneas.
   - `02_queries_olap.sql`: Catálogo de consultas SQL de analítica avanzada reutilizables en cualquier motor compatible ANSI SQL.

---

## 🛠️ Cómo ponerlo en marcha

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Iniciar el entorno de Jupyter
jupyter notebook
```

Los datos originales en Excel (`SSSALES.xlsx`, etc.) se encuentran en la subcarpeta `data/`.
