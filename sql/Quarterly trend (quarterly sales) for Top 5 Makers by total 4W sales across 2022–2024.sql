WITH maker_totals AS (
  SELECT
    maker,
    SUM(electric_vehicles_sold) AS tot_4w
  FROM electric_vehicle_sales_by_makers m
  JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
  WHERE m.vehicle_category = '4-Wheelers'
    AND d.fiscal_year IN (2022, 2023, 2024)
  GROUP BY maker
  ORDER BY tot_4w DESC
  LIMIT 5
)
SELECT
  m.maker,
  d.fiscal_year,
  d.quarter,
  SUM(m.electric_vehicles_sold) AS quarterly_sales
FROM electric_vehicle_sales_by_makers m
JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
JOIN maker_totals t ON m.maker = t.maker
WHERE m.vehicle_category = '4-Wheelers'
GROUP BY m.maker, d.fiscal_year, d.quarter
ORDER BY m.maker, d.fiscal_year, d.quarter;