--liquibase formatted sql

--changeset amezali:004_create_dim_product
CREATE TABLE IF NOT EXISTS dim_product (
    product_key INT,
    product_id STRING,
    product_name STRING,
    category STRING,
    subcategory STRING,
    unit_price DECIMAL(10, 2)
) USING DELTA;
