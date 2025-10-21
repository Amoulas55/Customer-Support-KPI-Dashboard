-- KPI 2 : Average Time from First Response to Resolution by Channel
SELECT
  `Ticket Channel`,
  ROUND(AVG(
    ABS(TIMESTAMP_DIFF(`Time to Resolution`, `First Response Time`, HOUR))
  ), 2) AS avg_hours_between_response_and_resolution,
  COUNT(*) AS total_tickets
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
WHERE `First Response Time` IS NOT NULL
  AND `Time to Resolution` IS NOT NULL
  AND `Ticket Status` = 'Closed'
GROUP BY `Ticket Channel`
ORDER BY avg_hours_between_response_and_resolution ASC;
