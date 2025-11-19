SELECT
  s.state,
  SUM(s.electric_vehicles_sold) AS ev_sold,
  SUM(s.total_vehicles_sold) AS total_sold,
  CASE WHEN SUM(s.total_vehicles_sold) = 0 THEN NULL
       ELSE SUM(s.electric_vehicles_sold) / SUM(s.total_vehicles_sold)
  END AS penetration_rate
FROM electric_vehicle_sales_by_state s
JOIN dim_date d ON s.`ï»¿date` = d.`ï»¿date`
WHERE d.fiscal_year = 2024
  AND s.state IN ('Delhi', 'Karnataka')
GROUP BY s.state;
