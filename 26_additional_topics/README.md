# PostgreSQL Section 26 - Additional Topics

This project contains my PostgreSQL practice from Section 26 of my SQL course.

The section covers additional PostgreSQL topics including full-text search, GIN indexes, query optimization, SQL best practices, database administration, testing, permissions, backups, and security.

## Topics Covered

- Full-text search in PostgreSQL
- `to_tsvector()`
- `to_tsquery()`
- `plainto_tsquery()`
- GIN indexes
- Searching text efficiently
- SQL coding style
- Naming conventions
- Indexing best practices
- Standard SQL syntax
- Avoiding `SELECT *`
- `LIKE` and wildcard performance
- Filtering and sorting in the database
- Limiting returned rows
- Using joins over unnecessary subqueries
- `EXPLAIN`
- Query performance
- Slow query logging
- Testing environments
- Unicode testing
- Restrictive permissions
- Backup strategies
- Database and server security

## Database

This project uses PostgreSQL.

## Project Structure

```text
sql-section-26-additional-topics/
│
├── README.md
├── .gitignore
│
├── 01_schema.sql
├── 02_sample_data.sql
├── 03_full_text_search.sql
├── 04_full_text_search_index.sql
├── 05_best_practices.sql
├── 06_query_performance.sql
└── 07_admin_best_practices.sql