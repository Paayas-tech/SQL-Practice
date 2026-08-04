## Description
This section covers SQL indexing in PostgreSQL, explaining how indexes improve query performance, how the query planner works, and how different types of indexes are created and used.

## Topics Covered

- Overview of Indexes
- Importing and Exploring the Dataset
- Using `EXPLAIN` to Analyze Query Execution
- Measuring Query Performance
- How Indexes Improve Performance
- Creating an Index (`CREATE INDEX`)
- Investigating Index Usage and Query Plans
- Creating a `UNIQUE INDEX`

## Key Concepts

- Sequential Scan vs Index Scan
- Query Planner
- `EXPLAIN` Statement
- Binary Search Concept
- B-Tree Indexes
- Single-column Indexes
- Compound (Multi-column) Indexes
- Unique Indexes
- `ON CONFLICT DO NOTHING`
- Performance Trade-offs
- Big O Complexity
  - Sequential Scan → **O(n)**
  - B-Tree Index Search → **O(log n)**

## What I Learned

- How PostgreSQL executes queries internally.
- How to analyze query execution using `EXPLAIN`.
- When the database chooses or ignores an index.
- How indexes significantly improve filtering and sorting performance.
- How to create single-column, compound, and unique indexes.
- Why indexes speed up reads but slightly slow down inserts, updates, and deletes.



