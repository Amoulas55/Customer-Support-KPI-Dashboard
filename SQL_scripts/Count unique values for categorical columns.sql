SELECT
  COUNT(DISTINCT `Ticket Type`) AS unique_ticket_types,
  COUNT(DISTINCT `Ticket Priority`) AS unique_priorities,
  COUNT(DISTINCT `Ticket Status`) AS unique_statuses,
  COUNT(DISTINCT `Ticket Channel`) AS unique_channels
FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`;
