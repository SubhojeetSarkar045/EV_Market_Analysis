WITH yearly AS (
  SELECT
    maker,
    d.fiscal_year,
    SUM(electric_vehicles_sold) AS ev
  FROM electric_vehicle_sales_by_makers m
  JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
  WHERE m.vehicle_category = '4-Wheelers'
  GROUP BY maker, d.fiscal_year
),
top5 AS (
  SELECT maker
  FROM yearly
  WHERE fiscal_year = 2024
  GROUP BY maker
  ORDER BY SUM(ev) DESC
  LIMIT 5
)
SELECT
  y22.maker,
  y22.ev AS ev_2022,
  y24.ev AS ev_2024,
  (POWER(y24.ev / NULLIF(y22.ev,0), 1.0/2) - 1) AS cagr_2022_2024
FROM yearly y22
JOIN yearly y24 ON y22.maker = y24.maker
JOIN top5 t ON y22.maker = t.maker
WHERE y22.fiscal_year = 2022
  AND y24.fiscal_year = 2024;
