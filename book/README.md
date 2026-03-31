# PostgreSQL Books Portfolio

This portfolio demonstrates the structure and concepts of a **Books database** using PostgreSQL, including **pagination** and **search** functionality.

## Tables

### 1. `book` table

Stores information about each book.

| Column | Type | Description |
|--------|------|-------------|
| `id` | SERIAL PRIMARY KEY | Unique identifier for each book |
| `title` | VARCHAR(100) UNIQUE NOT NULL | Book title (cannot be empty or duplicated) |
| `page` | BIGINT NOT NULL | Total number of pages in the book |

---

### 2. `page_content` table

Stores the content of each page of a book.

| Column | Type | Description |
|--------|------|-------------|
| `id` | SERIAL PRIMARY KEY | Unique identifier for each page |
| `page_contents` | TEXT NOT NULL | Text content of the page (can store large text) |
| `books_id` | INT REFERENCES book(id) NOT NULL | Links the page to a specific book |

---

## Search Examples

**Search book by title (case-insensitive):**

```sql
SELECT id, title 
FROM book 
WHERE title ILIKE '%title_name%';
