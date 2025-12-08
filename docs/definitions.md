# policy_algorithms

Weights and priorities for algorithms used within an encryption policy.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| algo_id |  | NO |  | Algorithm id (FK crypto_algorithms.id). |
| policy_id | BIGINT | NO |  | Encryption policy id (FK encryption_policies.id). |
| priority | INTEGER | NO | 0 | Fallback/ordering priority. |
| role | TEXT | NO |  | Role played by the algorithm. (enum: kem, sig, hash, symmetric) |
| weight | INTEGER | NO | 1 | Selection weight. |

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
| vw_policy_algorithms | mysql | algorithm=MERGE, security=INVOKER | [packages\policy-algorithms\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/policy-algorithms/schema/040_views.mysql.sql) |
| vw_policy_algorithms | postgres |  | [packages\policy-algorithms\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/policy-algorithms/schema/040_views.postgres.sql) |
