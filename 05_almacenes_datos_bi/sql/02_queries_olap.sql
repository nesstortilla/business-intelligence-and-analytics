-- ==============================================================
-- CONSULTAS ANALÍTICAS Y OPERACIONES OLAP (ROLLUP / WINDOW FUNCTIONS)
-- Autor: Néstor León | Business Intelligence & Analytics
-- ==============================================================

-- 1. Agregación Multidimensional con ROLLUP: Ventas por Región, División y Tienda
SELECT 
    COALESCE(s.region, '--- TOTAL REGION ---') AS region,
    COALESCE(s.division_name, '--- TOTAL DIVISION ---') AS division,
    COALESCE(s.store_name, '--- TOTAL TIENDA ---') AS tienda,
    COUNT(f.sales_id) AS total_transacciones,
    SUM(f.quantity_sold) AS unidades_vendidas,
    ROUND(SUM(f.total_sales_amount), 2) AS facturacion_total
FROM fact_sales f
JOIN dim_store s ON f.store_key = s.store_key
GROUP BY ROLLUP (s.region, s.division_name, s.store_name)
ORDER BY s.region NULLS LAST, facturacion_total DESC;

-- 2. Análisis de Evolución Temporal y Variación Intermensual (MoM) con LAG()
WITH ventas_mensuales AS (
    SELECT 
        t.year_number,
        t.month_number,
        t.month_name,
        SUM(f.total_sales_amount) AS ventas_mes
    FROM fact_sales f
    JOIN dim_time t ON f.time_key = t.time_key
    GROUP BY t.year_number, t.month_number, t.month_name
)
SELECT 
    year_number,
    month_number,
    month_name,
    ROUND(ventas_mes, 2) AS ventas_actuales,
    ROUND(LAG(ventas_mes, 1) OVER (ORDER BY year_number, month_number), 2) AS ventas_mes_anterior,
    ROUND(
        (ventas_mes - LAG(ventas_mes, 1) OVER (ORDER BY year_number, month_number)) 
        / NULLIF(LAG(ventas_mes, 1) OVER (ORDER BY year_number, month_number), 0) * 100, 2
    ) AS variacion_pct_mom
FROM ventas_mensuales
ORDER BY year_number, month_number;

-- 3. Ranking de Mejores Clientes por Facturación y Contribución Acumulada (Pareto)
WITH ranking_clientes AS (
    SELECT 
        c.customer_name,
        c.city,
        SUM(f.total_sales_amount) AS gasto_total,
        DENSE_RANK() OVER (ORDER BY SUM(f.total_sales_amount) DESC) AS ranking
    FROM fact_sales f
    JOIN dim_customer c ON f.customer_key = c.customer_key
    GROUP BY c.customer_name, c.city
)
SELECT 
    ranking,
    customer_name,
    city,
    ROUND(gasto_total, 2) AS gasto_total,
    ROUND(SUM(gasto_total) OVER (ORDER BY ranking) / SUM(gasto_total) OVER () * 100, 2) AS pct_acumulado_facturacion
FROM ranking_clientes
WHERE ranking <= 10;
