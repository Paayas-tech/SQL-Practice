# Section 19 - Migration

In this section, I learned how to migrate and refactor a database structure.

The main example was changing the relationship between students and courses.

## What I learned

- Why database schemas sometimes need to be changed
- How to create a new table for a many-to-many relationship
- How to use a compound primary key
- How to create foreign key constraints
- How to use `ON UPDATE` and `ON DELETE`
- How to insert data using a `SELECT` query
- How to filter data using `WHERE`
- How to remove an old column using `ALTER TABLE`
- How to create a database `VIEW`
- How a view can help during a database migration
- How migration allows us to change the database structure without breaking the application immediately

## Migration Example

Originally, the `students` table had a `course_id` column.

This meant that one student could only be connected to one course.

The new structure uses a separate table:

```sql
courses_students