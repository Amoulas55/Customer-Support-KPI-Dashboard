SELECT
  `Ticket Status`,
  COUNT(*) AS total_tickets,
  SUM(CASE WHEN `Time to Resolution` IS NULL THEN 1 ELSE 0 END) AS missing_resolution_time,
  SUM(CASE WHEN `Customer Satisfaction Rating` IS NULL THEN 1 ELSE 0 END) AS missing_satisfaction
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
GROUP BY `Ticket Status`
ORDER BY total_tickets DESC;
