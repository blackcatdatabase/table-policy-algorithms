-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  policy_algorithms

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_algo   FOREIGN KEY (algo_id)   REFERENCES crypto_algorithms(id) ON DELETE CASCADE;
