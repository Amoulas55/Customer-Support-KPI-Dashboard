-- KPI 5: SLA Compliance Rate based on time thresholds per priority
WITH sla_targets AS (
  SELECT 'Critical' AS priority, 8 AS sla_hours UNION ALL  -- 8h SLA for critical
  SELECT 'High', 12 UNION ALL                             -- 12h for high
  SELECT 'Medium', 24 UNION ALL                           -- 24h for medium
  SELECT 'Low', 48                                        -- 48h for low
),
ticket_times AS (
  SELECT
    `Ticket Priority` AS priority,
    TIMESTAMP_DIFF(`Time to Resolution`, `First Response Time`, HOUR) AS resolution_hours
  FROM `spry-utility-475708-u9.customer_support_tickets.customer_support_tickets`
  WHERE `Time to Resolution` IS NOT NULL
    AND `First Response Time` IS NOT NULL
    AND `Ticket Status` = 'Closed'
)
SELECT
  t.priority,
  ROUND(SUM(CASE WHEN t.resolution_hours <= s.sla_hours THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS sla_compliance_rate_pct,
  ROUND(SUM(CASE WHEN t.resolution_hours > s.sla_hours THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS sla_breach_rate_pct,
  COUNT(*) AS total_tickets
FROM ticket_times t
JOIN sla_targets s
  ON t.priority = s.priority
GROUP BY t.priority, s.sla_hours
ORDER BY sla_compliance_rate_pct DESC;
