# dbt Project — Olist E-commerce

Dimensional modeling in dbt on top of the public Olist dataset (Kaggle),
simulating an end-to-end analytics engineering pipeline.

## Goal
Transform raw order, customer, payment, and review data into
analytics-ready models for BI consumption, with data quality tests
and automated documentation.

## Structure
- `models/staging/` — raw table normalization
- `models/marts/` — facts and dimensions (fct_orders, dim_customers...)
- `tests/` — custom data quality tests

## Stack
dbt-core, [your warehouse: BigQuery/Redshift/DuckDB], SQL