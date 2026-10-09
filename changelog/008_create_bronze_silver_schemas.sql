--liquibase formatted sql
--changeset estudiante:008
CREATE SCHEMA IF NOT EXISTS workspace.bronze;
CREATE SCHEMA IF NOT EXISTS workspace.silver;

--rollback DROP SCHEMA IF EXISTS workspace.silver;
--rollback DROP SCHEMA IF EXISTS workspace.bronze;
