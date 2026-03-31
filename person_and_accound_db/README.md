# Person and Account Database (PostgreSQL)

This project demonstrates the creation of two linked tables in PostgreSQL: `users` and `emails`.  
It includes **table creation**, **foreign key relationships**, **unique constraints**, and **data insertion** with a sample `JOIN` query to retrieve combined data.

## Tables

### 1. `users`
- **id**: Primary Key
- **first**: Surname (VARCHAR)
- **name**: First Name (VARCHAR)
- **age**: Age (INT)

### 2. `emails`
- **id**: Primary Key
- **email**: Email address (VARCHAR, UNIQUE)
- **users_id**: Foreign Key referencing `users.id`

## Sample Data Insertion

```sql
INSERT INTO users (first, name, age) 
VALUES ('Bobomurodov', 'Umrbek', 22);

INSERT INTO emails (email, users_id)
VALUES ('umrbek@example.com', 1);
