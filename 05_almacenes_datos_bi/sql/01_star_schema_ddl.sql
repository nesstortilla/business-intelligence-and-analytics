-- ==============================================================
-- MODELADO DIMENSIONAL: ESQUEMA EN ESTRELLA (STAR SCHEMA)
-- Caso de Estudio: Data Warehouse de Ventas Minoristas (SSSales)
-- Autor: Néstor León | Business Intelligence & Analytics
-- ==============================================================

-- 1. Dimensión Tiempo
CREATE TABLE IF NOT EXISTS dim_time (
    time_key INTEGER PRIMARY KEY,
    date_val DATE NOT NULL,
    day_number INTEGER,
    month_number INTEGER,
    month_name VARCHAR(20),
    quarter INTEGER,
    year_number INTEGER
);

-- 2. Dimensión Cliente
CREATE TABLE IF NOT EXISTS dim_customer (
    customer_key INTEGER PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(20)
);

-- 3. Dimensión Tienda / División
CREATE TABLE IF NOT EXISTS dim_store (
    store_key INTEGER PRIMARY KEY,
    store_id VARCHAR(20) NOT NULL,
    store_name VARCHAR(100),
    division_name VARCHAR(50),
    city VARCHAR(50),
    region VARCHAR(50)
);

-- 4. Tabla de Hechos: Ventas (Fact Sales)
CREATE TABLE IF NOT EXISTS fact_sales (
    sales_id INTEGER PRIMARY KEY,
    time_key INTEGER REFERENCES dim_time(time_key),
    customer_key INTEGER REFERENCES dim_customer(customer_key),
    store_key INTEGER REFERENCES dim_store(store_key),
    quantity_sold INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    total_sales_amount DECIMAL(12, 2) NOT NULL,
    discount_amount DECIMAL(10, 2) DEFAULT 0.00
);
