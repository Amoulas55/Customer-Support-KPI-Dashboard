-- KPI 4: Average Customer Satisfaction by Channel
SELECT
  `Ticket Channel`,
  ROUND(AVG(`Customer Satisfaction Rating`), 2) AS avg_satisfaction_rating,
  COUNT(`Customer Satisfaction Rating`) AS total_feedbacks
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
WHERE `Customer Satisfaction Rating` IS NOT NULL
GROUP BY `Ticket Channel`
ORDER BY avg_satisfaction_rating DESC;
