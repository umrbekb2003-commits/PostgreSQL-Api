# PostgreSQL Crops Table Portfolio

This portfolio demonstrates the creation and usage of a **Crops table** in PostgreSQL, including **table creation, data insertion, and basic queries with sorting**.

## Table Structure

### `crops` table

Stores information about products, their price, and quantity in kilograms.

| Column | Type | Constraints | Description |
|--------|------|------------|-------------|
| `id` | SERIAL PRIMARY KEY | Unique identifier for each product | Automatically increments for each row |
| `product` | TEXT UNIQUE NOT NULL | Cannot be empty and must be unique | Name of the product |
| `price` | INT NOT NULL | Cannot be empty | Price of the product |
| `kilogram` | INT NOT NULL | Cannot be empty | Quantity in kilograms |

---

## Example Data Insertion

Insert sample data into the table:

```sql id="b2p5qw"
INSERT INTO crops (product, price, kilogram) 
VALUES ('patades', 13, 200);
