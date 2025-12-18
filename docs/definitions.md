# policy_algorithms

Weights and priorities for algorithms used within an encryption policy.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| policy_id | BIGINT | NO |  | Encryption policy id (FK encryption_policies.id). |  |
| algo_id | mysql: BIGINT | NO |  | Algorithm id (FK crypto_algorithms.id). |  |
| role | mysql: ENUM('kem','sig','hash','symmetric') / postgres: TEXT | NO |  | Role played by the algorithm. (enum: kem, sig, hash, symmetric) |  |
| weight | mysql: INT / postgres: INTEGER | NO | 1 | Selection weight. |  |
| priority | mysql: INT / postgres: INTEGER | NO | 0 | Fallback/ordering priority. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_pa_algo | algo_id | crypto_algorithms(id) | ON DELETE CASCADE |
| fk_pa_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_pa_algo | algo_id | crypto_algorithms(id) | ON DELETE CASCADE |
| fk_pa_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_policy_algorithms | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_policy_algorithms | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
