-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  policy_algorithms

-- Contract view for [policy_algorithms]
CREATE OR REPLACE VIEW vw_policy_algorithms AS
SELECT
  policy_id,
  algo_id,
  role,
  weight,
  priority
FROM policy_algorithms;
