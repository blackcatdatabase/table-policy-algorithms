-- Auto-generated from schema-views-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  policy_algorithms

-- Contract view for [policy_algorithms]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_policy_algorithms AS
SELECT
  policy_id,
  algo_id,
  role,
  weight,
  priority,
  created_at,
  updated_at
FROM policy_algorithms;
