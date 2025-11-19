WITH yearly AS (
  SELECT
    state,
    d.fiscal_year,
    SUM(electric_vehicles_sold) AS ev
  FROM electric_vehicle_sales_by_state s
  JOIN dim_date d ON s.`ï»¿date` = d.`ï»¿date`
  GROUP BY state, d.fiscal_year
),
penetration_2024 AS (
  SELECT
    state,
    SUM(ev) AS ev_2024
  FROM yearly
  WHERE fiscal_year = 2024
  GROUP BY state
),
cagr AS (
  SELECT
    y22.state,
    y22.ev AS ev_2022,
    y24.ev AS ev_2024,
    (POWER(y24.ev / NULLIF(y22.ev,0), 1.0/2) - 1) AS cagr_val
  FROM yearly y22
  JOIN yearly y24 ON y22.state = y24.state
  WHERE y22.fiscal_year = 2022
    AND y24.fiscal_year = 2024
),
top10 AS (
  SELECT p.state
  FROM (
    SELECT state, ev_2024 FROM penetration_2024
  ) p
  ORDER BY p.ev_2024 DESC
  LIMIT 10
)
SELECT
  c.state,
  c.ev_2024,
  c.cagr_val,
  (c.ev_2024 * POWER(1 + COALESCE(c.cagr_val, 0), 6)) AS projected_ev_2030
FROM cagr c
JOIN top10 t ON c.state = t.state
ORDER BY projected_ev_2030 DESC;
