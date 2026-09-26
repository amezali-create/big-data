--liquibase formatted sql

--changeset amezali:006_create_dim_store
CREATE TABLE IF NOT EXISTS dim_store (
    store_key INT,
    store_id STRING,
    store_name STRING,
    city STRING,
    region STRING,
    country STRING
) USING DELTA;
