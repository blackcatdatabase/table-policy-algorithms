-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  policy_algorithms

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_algo   FOREIGN KEY (algo_id)   REFERENCES crypto_algorithms(id) ON DELETE CASCADE;
