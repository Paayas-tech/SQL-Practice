# Section 17 - Dates & Time in PostgreSQL

In this section, I learned how PostgreSQL stores and works with date and time values. I also learned how to perform calculations using timestamps, handle time zones correctly, and automatically store the creation time of records.

---

## Topics Covered

### 1. Date, Time and Timestamp
- `DATE` → Stores only the date.
- `TIME` → Stores only the time.
- `TIMESTAMP` → Stores both date and time.
- `CURRENT_DATE`, `CURRENT_TIME`, `CURRENT_TIMESTAMP` can be used to get the current system date and time.

Example:
```sql
SELECT CURRENT_DATE;
SELECT CURRENT_TIME;
SELECT CURRENT_TIMESTAMP;
```

---

### 2. Creating a Table with Timestamp Columns

Created a `concerts` table with:

- id
- band
- start_time
- end_time

Example:

```sql
CREATE TABLE concerts (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    band VARCHAR(1023),
    start_time TIMESTAMP,
    end_time TIMESTAMP
);
```

---

### 3. Working with Dates

Used comparison operators to filter records.

Example:

```sql
SELECT *
FROM concerts
WHERE start_time >= '2030-01-01'
AND start_time <= '2030-12-31';
```

---

### 4. Extracting Date Information

Used the `EXTRACT()` function to get parts of a timestamp.

Examples:

```sql
SELECT EXTRACT(YEAR FROM start_time);

SELECT EXTRACT(MONTH FROM start_time);

SELECT EXTRACT(EPOCH FROM start_time);
```

Common values you can extract:

- YEAR
- MONTH
- DAY
- HOUR
- MINUTE
- SECOND
- EPOCH

---

### 5. Formatting Dates

Used `TO_CHAR()` to display timestamps in custom formats.

Example:

```sql
SELECT TO_CHAR(start_time, 'Month');
```

Useful for reports and grouping data.

---

### 6. INTERVAL

`INTERVAL` stores a duration of time.

Example:

```sql
SELECT INTERVAL '1 year';
```

It can also be used as a table column.

Example:

```sql
duration INTERVAL
```

---

### 7. Date Calculations

Subtracting two timestamps returns an interval.

Example:

```sql
SELECT end_time - start_time
FROM concerts;
```

Adding an interval:

```sql
SELECT start_time + INTERVAL '1 year';
```

Other examples:

```sql
INTERVAL '3 hours'

INTERVAL '15 days'

INTERVAL '2 months'
```

---

### 8. Time Zones

Learned the difference between:

- `TIMESTAMP`
- `TIMESTAMP WITH TIME ZONE`

Best practice:

- Store timestamps in **UTC**
- Convert them to the user's local timezone when displaying.

Useful commands:

```sql
SET TIME ZONE 'UTC';

SET TIME ZONE 'Europe/Berlin';

SELECT CURRENT_TIMESTAMP
AT TIME ZONE 'Europe/Berlin';
```

---

### 9. Automatically Storing Creation Time

Added a `created_at` column.

```sql
created_at TIMESTAMP WITH TIME ZONE
```

Set the default value:

```sql
ALTER TABLE concerts
ALTER COLUMN created_at
SET DEFAULT CURRENT_TIMESTAMP;
```

Now every new row automatically stores its creation time.

---

## Important Functions

- CURRENT_DATE
- CURRENT_TIME
- CURRENT_TIMESTAMP
- EXTRACT()
- TO_CHAR()

---

## Important Data Types

- DATE
- TIME
- TIMESTAMP
- TIMESTAMP WITH TIME ZONE
- INTERVAL

---

## Key Learnings

- PostgreSQL has separate data types for date, time and timestamp.
- `TIMESTAMP` stores both date and time.
- `EXTRACT()` is used to get specific parts of a timestamp.
- `TO_CHAR()` formats dates and timestamps.
- Subtracting timestamps returns an `INTERVAL`.
- `INTERVAL` can also be used as a column type.
- `TIMESTAMP WITH TIME ZONE` is recommended for applications used in multiple countries.
- Store timestamps in UTC and convert them when displaying to users.
- `CURRENT_TIMESTAMP` is useful for automatically storing record creation time.