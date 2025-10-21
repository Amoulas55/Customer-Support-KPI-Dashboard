SELECT
  COUNTIF(`First Response Time` IS NOT NULL) AS valid_first_response,
  COUNTIF(`Time to Resolution` IS NOT NULL) AS valid_resolution_time
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`;
