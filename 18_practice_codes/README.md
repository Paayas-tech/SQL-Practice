# Section 18 - Practical Exercises with Dates, Times and Timestamps

This section is mainly practice of Section 17.

## Topics practiced

- DATE, TIME and TIMESTAMP
- Inserting date/time values
- EXTRACT
- TO_CHAR()
- INTERVAL calculations
- Timezone conversion
- AT TIME ZONE

## Important queries

### TIMESTAMP
TIMESTAMP '2060-08-15 21:00:00'

### DATE
DATE '2060-08-15'

### TIME
TIME '19:30:00'

### Formatting
TO_CHAR(concert_date, 'YYYY/MM/DD')
TO_CHAR(start_time, 'HH24:MI:SS')

### Timezone
start_time AT TIME ZONE 'CET' AT TIME ZONE 'EST'