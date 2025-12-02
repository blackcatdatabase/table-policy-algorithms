-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  policy_algorithms

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE CASCADE;
