# Transactions

## What is a Transaction?

A transaction is a group of SQL statements that are executed as a single unit of work.

If every statement succeeds, the changes are saved.

If any statement fails, the transaction can be rolled back to keep the database consistent.

## Syntax

```sql
BEGIN TRANSACTION;

-- SQL statements

COMMIT;

Accessing Data Inside a Transaction:
SQL shows your own changes (INSERT, UPDATE, DELETE) inside the current transaction even before they are committed. Other users cannot see these changes until COMMIT is executed. If ROLLBACK is used, all changes made during the transaction are discarded.

### SAVEPOINT

A SAVEPOINT creates a checkpoint inside a transaction.

```sql
BEGIN TRANSACTION;

SAVEPOINT sp1;

-- SQL statements

ROLLBACK TO SAVEPOINT sp1;

COMMIT;


This is one of the most commonly used features in **banking systems, e-commerce platforms, and financial applications**, where only part of a transaction may need to be reversed without losing all prior successful operations.

### Transactions and Performance

Transactions improve both data safety and performance.

- The database records changes in a journal before committing them.
- Multiple SQL statements can be grouped into a single transaction.
- This reduces repeated disk writes and improves performance for bulk INSERT, UPDATE, and DELETE operations.
- For very large data loads, developers often commit changes in batches (e.g., every 1000 rows) instead of one huge transaction.

## ACID Properties

ACID ensures reliable database transactions.

- **Atomicity** → Transaction is all-or-nothing.
- **Consistency** → Database remains in a valid state before and after a transaction.
- **Isolation** → Concurrent transactions do not interfere with each other.
- **Durability** → Once committed, data is permanently stored even after crashes.

Example:

```sql
BEGIN TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE id = 2;

COMMIT;
```