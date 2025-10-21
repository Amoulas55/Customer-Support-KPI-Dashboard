-- KPI 3: Ticket Volume by Status and Priority
SELECT
  `Ticket Priority`,
  `Ticket Status`,
  COUNT(*) AS ticket_count
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
WHERE `Ticket Priority` IS NOT NULL
  AND `Ticket Status` IS NOT NULL
GROUP BY `Ticket Priority`, `Ticket Status`
ORDER BY `Ticket Priority`, ticket_count DESC;
