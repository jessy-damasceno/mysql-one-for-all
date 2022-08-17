-- Active: 1660740770631@@127.0.0.1@3307@SpotifyClone
SELECT
  MIN(p.plan_value) AS faturamento_minimo,
  MAX(p.plan_value) AS faturamento_maximo,
  ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
  SUM(p.plan_value) AS faturamento_total
FROM SpotifyClone.plan AS p
JOIN SpotifyClone.users AS u ON p.plan_id = u.user_plan_id;
