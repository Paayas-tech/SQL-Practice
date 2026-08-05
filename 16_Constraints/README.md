# Section 16: Constraints

## Topics Covered

- What are Constraints?
- UNIQUE Constraint
- UNIQUE Constraint vs UNIQUE Index
- STRPOS() Function
- CHECK Constraint
- FOREIGN KEY Constraint
- ON UPDATE & ON DELETE Actions

---

## 1. UNIQUE Constraint
- Prevents duplicate values in one or more columns.
- Can be applied while creating or altering a table.
- Multiple `NULL` values are allowed.
- Can be removed using `DROP CONSTRAINT`.

Example:
```sql
ALTER TABLE stations
ADD CONSTRAINT stations_name_unique
UNIQUE(name);
```

---

## 2. UNIQUE Constraint vs UNIQUE Index

**UNIQUE Constraint**
- Used to enforce data integrity.
- Database automatically creates an index.

**UNIQUE Index**
- Primarily created for performance.
- Also enforces uniqueness.

---

## 3. STRPOS()

Returns the position of a substring.

```sql
STRPOS('12-ABC','-')
```

Returns `3`.

Returns `0` if substring is not found.

---

## 4. CHECK Constraint

Used to enforce custom validation rules.

Examples:
- Minimum string length
- Must contain a specific character
- Business rules

```sql
CHECK(LENGTH(name) >= 5)
```

```sql
CHECK(STRPOS(name,'-') > 0)
```

> Note: CHECK only rejects rows when the condition is **FALSE**. `NULL` passes unless `NOT NULL` is also used.

---

## 5. FOREIGN KEY Constraint

Maintains relationships between tables.

```sql
FOREIGN KEY(station_id)
REFERENCES stations(id)
```

- Prevents invalid references.
- Referenced columns must have matching data types.

---

## 6. ON UPDATE & ON DELETE

Available actions:

- RESTRICT (Default)
- SET NULL
- SET DEFAULT
- CASCADE

**CASCADE**
- Updates/deletes child records automatically.

**SET NULL**
- Sets foreign key to `NULL` when parent row is deleted/updated.

---

## Key Takeaways

- Constraints maintain data integrity.
- UNIQUE prevents duplicate values.
- CHECK validates custom rules.
- FOREIGN KEY maintains relationships.
- CASCADE propagates updates/deletions automatically.
- SET NULL removes the relationship while keeping child records.