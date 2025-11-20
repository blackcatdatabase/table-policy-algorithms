<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – policy_algorithms

Weights and priorities for algorithms used within an encryption policy.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| policy_id | BIGINT | NO | — | Encryption policy id (FK encryption_policies.id). |  |
| algo_id | BIGINT | NO | — | Algorithm id (FK crypto_algorithms.id). |  |
| role | TEXT | NO | — | Role played by the algorithm. | enum: kem, sig, hash, symmetric |
| priority | INTEGER | NO | 0 | Fallback/ordering priority. |  |