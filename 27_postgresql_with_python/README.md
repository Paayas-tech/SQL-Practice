# Section 27 - PostgreSQL with Python

## Topics Covered

- Connecting Python to PostgreSQL
- Psycopg
- Database connections
- Cursors
- fetchone()
- fetchmany()
- fetchall()
- Parameterized queries
- Named parameters
- SQL injection prevention
- Object Relational Mapping (ORM)
- SQLAlchemy

## Psycopg

Psycopg allows Python applications to communicate with PostgreSQL.

## Fetching Data

```python
cursor.fetchone()
cursor.fetchmany(3)
cursor.fetchall()