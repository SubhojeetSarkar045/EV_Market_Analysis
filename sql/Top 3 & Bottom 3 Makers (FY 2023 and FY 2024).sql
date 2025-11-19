-- Top 3 makers for FY 2023 (2W)
SELECT
  maker,
  SUM(electric_vehicles_sold) AS total_2w_sold
FROM electric_vehicle_sales_by_makers m
JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
WHERE d.fiscal_year = 2023
  AND m.vehicle_category = '2-Wheelers'
GROUP BY maker
ORDER BY total_2w_sold DESC
LIMIT 3;


-- Bottom 3 makers for FY 2023 (2W)
SELECT
  maker,
  SUM(electric_vehicles_sold) AS total_2w_sold
FROM electric_vehicle_sales_by_makers m
JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
WHERE d.fiscal_year = 2023
  AND m.vehicle_category = '2-Wheelers'
GROUP BY maker
ORDER BY total_2w_sold ASC
LIMIT 3;


-- Top 3 makers for FY 2024 (2W)
SELECT
  maker,
  SUM(electric_vehicles_sold) AS total_2w_sold
FROM electric_vehicle_sales_by_makers m
JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
WHERE d.fiscal_year = 2024
  AND m.vehicle_category = '2-Wheelers'
GROUP BY maker
ORDER BY total_2w_sold DESC
LIMIT 3;


-- Bottom 3 makers for FY 2024 (2W)
SELECT
  maker,
  SUM(electric_vehicles_sold) AS total_2w_sold
FROM electric_vehicle_sales_by_makers m
JOIN dim_date d ON m.`ï»¿date` = d.`ï»¿date`
WHERE d.fiscal_year = 2024
  AND m.vehicle_category = '2-Wheelers'
GROUP BY maker
ORDER BY total_2w_sold ASC
LIMIT 3;