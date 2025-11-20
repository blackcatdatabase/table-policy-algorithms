-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
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
