-- KPI 1: Average Resolution Time (absolute hours) by Priority
SELECT
  `Ticket Priority`,
  ROUND(AVG(
    ABS(TIMESTAMP_DIFF(`Time to Resolution`, `First Response Time`, HOUR))
  ), 2) AS avg_resolution_hours,
  COUNT(*) AS total_tickets
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
WHERE `Ticket Status` = 'Closed'
  AND `Time to Resolution` IS NOT NULL
  AND `First Response Time` IS NOT NULL
GROUP BY `Ticket Priority`
ORDER BY avg_resolution_hours ASC;
