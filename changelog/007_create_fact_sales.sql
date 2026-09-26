--liquibase formatted sql

--changeset amezali:007_create_fact_sales
CREATE TABLE IF NOT EXISTS fact_sales (
    sales_key STRING,
    date_key INT,
    product_key INT,
    customer_key INT,
    store_key INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_amount DECIMAL(10, 2)
) USING DELTA;
