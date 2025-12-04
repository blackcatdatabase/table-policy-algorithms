-- Auto-generated from schema-views-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  policy_algorithms

-- Contract view for [policy_algorithms]
CREATE OR REPLACE VIEW vw_policy_algorithms AS
SELECT
  policy_id,
  algo_id,
  role,
  weight,
  priority,
  created_at,
  updated_at
FROM policy_algorithms;
