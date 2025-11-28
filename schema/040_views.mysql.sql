-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  policy_algorithms

-- Contract view for [policy_algorithms]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_policy_algorithms AS
SELECT
  policy_id,
  algo_id,
  role,
  weight,
  priority
FROM policy_algorithms;
