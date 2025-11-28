-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  policy_algorithms

CREATE TABLE IF NOT EXISTS policy_algorithms (
  policy_id BIGINT NOT NULL,
  algo_id   BIGINT NOT NULL,
  role TEXT NOT NULL,                        -- 'kem' | 'sig' | 'hash' | 'symmetric'
  weight INTEGER NOT NULL DEFAULT 1,
  priority INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (policy_id, algo_id, role),
  CONSTRAINT chk_pa_role CHECK (role IN ('kem','sig','hash','symmetric'))
);
