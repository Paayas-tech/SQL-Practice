# Views

## Topics Covered

- CREATE VIEW
- Querying a View
- Views with JOIN
- GROUP BY on Views
- Materialized Views
- Updatable Views

---

## What is a View?

A View is a **virtual table** created from a SQL query. It stores the query, not the actual data.

```sql
CREATE VIEW employee_public_view AS
SELECT firstname, lastname, email, role
FROM employees;
```

---

## Why use Views?

- Simplify complex queries
- Hide sensitive columns
- Reuse frequently used queries
- Support legacy applications

---

## Materialized View

A Materialized View stores the **query result** instead of only the query.

```sql
CREATE MATERIALIZED VIEW view_name AS
SELECT ...
```

Refresh when the source table changes:

```sql
REFRESH MATERIALIZED VIEW view_name;
```

### View vs Materialized View

| View | Materialized View |
|------|-------------------|
| Stores query | Stores data |
| Always up to date | Needs refresh |
| No extra storage | Uses storage |

---

## Updatable Views

Some views allow `INSERT`, `UPDATE`, and `DELETE`.

A view is generally updatable if it:
- Uses one table
- Doesn't use JOIN
- Doesn't use GROUP BY
- Doesn't use UNION
- Doesn't use aggregate functions

Example:

```sql
UPDATE employee_view
SET firstname = 'Rahul'
WHERE id = 1;
```

The original table is updated.

---

## Exercises

- Create a basic View
- Create a View using JOIN
- Generate reports using Views