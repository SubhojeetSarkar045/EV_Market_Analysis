SELECT
  s.vehicle_category,
  SUM(CASE WHEN d.fiscal_year = 2022 THEN s.electric_vehicles_sold * 
            CASE WHEN s.vehicle_category = '2-Wheeler' THEN 85000 ELSE 1500000 END END) AS revenue_2022,
  SUM(CASE WHEN d.fiscal_year = 2023 THEN s.electric_vehicles_sold * 
            CASE WHEN s.vehicle_category = '2-Wheeler' THEN 85000 ELSE 1500000 END END) AS revenue_2023,
  SUM(CASE WHEN d.fiscal_year = 2024 THEN s.electric_vehicles_sold * 
            CASE WHEN s.vehicle_category = '2-Wheeler' THEN 85000 ELSE 1500000 END END) AS revenue_2024
FROM electric_vehicle_sales_by_state s
JOIN dim_date d ON s.`ï»¿date` = d.`ï»¿date`
GROUP BY s.vehicle_category;
