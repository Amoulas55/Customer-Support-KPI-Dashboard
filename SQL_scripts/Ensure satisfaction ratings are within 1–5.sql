-- Validation 4: Ensure satisfaction ratings are within 1–5
SELECT
  MIN(`Customer Satisfaction Rating`) AS min_rating,
  MAX(`Customer Satisfaction Rating`) AS max_rating,
  AVG(`Customer Satisfaction Rating`) AS avg_rating,
  COUNTIF(`Customer Satisfaction Rating` IS NULL) AS missing_ratings
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`;
