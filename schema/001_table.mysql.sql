-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  policy_algorithms

CREATE TABLE IF NOT EXISTS policy_algorithms (
  policy_id BIGINT UNSIGNED NOT NULL,
  algo_id BIGINT UNSIGNED NOT NULL,
  role ENUM('kem','sig','hash','symmetric') NOT NULL,
  weight INT NOT NULL DEFAULT 1,
  priority INT NOT NULL DEFAULT 0,
  PRIMARY KEY (policy_id, algo_id, role)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
