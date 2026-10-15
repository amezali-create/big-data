--liquibase formatted sql
--changeset estudiante:010
CREATE TABLE IF NOT EXISTS workspace.bronze.customers_raw (
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    city STRING,
    country STRING
) USING DELTA;
--rollback DROP TABLE IF EXISTS workspace.bronze.customers_raw;
```[cite: 10]

---

### **2. En `changelog/changes/011_create_stores_raw.sql` pega:**
```sql
--liquibase formatted sql
--changeset estudiante:011
CREATE TABLE IF NOT EXISTS workspace.bronze.stores_raw (
    store_id STRING,
    store_name STRING,
    city STRING,
    region STRING,
    country STRING
) USING DELTA;
--rollback DROP TABLE IF EXISTS workspace.bronze.stores_raw;
```[cite: 10]

---

### **3. Abre `changelog/db.changelog-master.sql` y agrega al final:**
```sql
--include file:changelog/changes/010_create_customers_raw.sql
--include file:changelog/changes/011_create_stores_raw.sql
```[cite: 10]

---

### **4. Subir cambios a Git**
Guarda todos los archivos cambiados (`Ctrl + S`) y ejecuta en la terminal[cite: 10]:

```bash
git add changelog/
git commit -m "feat: add customer and store bronze tables"
git push -u origin feature/lab07-customer-store-bronze
```[cite: 10]

Avisa cuando hayas hecho el `push` o creado el Pull Request en GitHub.