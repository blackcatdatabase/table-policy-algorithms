-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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
