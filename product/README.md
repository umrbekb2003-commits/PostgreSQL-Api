# PostgreSQL Crops Table (Products Example)

This project demonstrates the creation and usage of a **products table (crops)** in PostgreSQL.  
It includes **table creation, constraints, default timestamp, data insertion, and sorting queries**.

---

## Table Structure

### `crops` table

This table stores information about products, including their price, weight, and creation time.

| Column | Type | Constraints | Description |
|--------|------|------------|-------------|
| `id` | SERIAL PRIMARY KEY | Unique identifier | Auto-incremented ID |
| `product` | TEXT UNIQUE NOT NULL | Must be unique and not empty | Product name |
| `price` | INT NOT NULL | Cannot be null | Product price |
| `kilogram` | INT NOT NULL | Cannot be null | Product weight |
| `dete` | TIMESTAMP DEFAULT now() | Default current time | Record creation time |

---

## Example Data Insertion

```sql
INSERT INTO crops (product, price, kilogram) 
VALUES ('patades', 13, 200);
