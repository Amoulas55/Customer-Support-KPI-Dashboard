SELECT
  COUNT(*) AS total_tickets,
  COUNTIF(LENGTH(`Ticket Description`) < 20) AS short_descriptions
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`;
