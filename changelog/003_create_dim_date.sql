--liquibase formatted sql

--changeset amezali:003_create_dim_date
CREATE TABLE IF NOT EXISTS dim_date (
    date_key INT,
    full_date DATE,
    day_of_week INT,
    day_name STRING,
    day_of_month INT,
    day_of_year INT,
    week_of_year INT,
    month_num INT,
    month_name STRING,
    quarter INT,
    year INT
) USING DELTA;
