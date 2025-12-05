-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  policy_algorithms

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_algorithms ADD CONSTRAINT fk_pa_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE CASCADE;
