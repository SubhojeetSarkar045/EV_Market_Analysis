WITH yearly AS (
  SELECT
    state,
    d.fiscal_year,
    SUM(total_vehicles_sold) AS total
  FROM electric_vehicle_sales_by_state s
  JOIN dim_date d ON s.`ï»¿date` = d.`ï»¿date`
  GROUP BY state, d.fiscal_year
)
SELECT
  y22.state,
  (POWER(y24.total / NULLIF(y22.total,0), 1.0/2) - 1) AS cagr_total_2022_2024
FROM yearly y22
JOIN yearly y24 ON y22.state = y24.state
WHERE y22.fiscal_year = 2022
  AND y24.fiscal_year = 2024
ORDER BY cagr_total_2022_2024 DESC
LIMIT 10;
