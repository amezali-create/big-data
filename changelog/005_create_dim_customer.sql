--liquibase formatted sql

--changeset amezali:005_create_dim_customer
CREATE TABLE IF NOT EXISTS dim_customer (
    customer_key INT,
    customer_id STRING,
    first_name STRING,
    last_name STRING,
    email STRING,
    city STRING,
    country STRING
) USING DELTA;
