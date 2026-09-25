--liquibase formatted sql

--include file:changelog/001_create_bi_schema.sql
--include file:changelog/003_create_dim_date.sql
--include file:changelog/004_create_dim_product.sql
--include file:changelog/005_create_dim_customer.sql
--include file:changelog/006_create_dim_store.sql
--include file:changelog/007_create_fact_sales.sql