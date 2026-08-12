# Section 20 - Arrays

## What I learned

In this section I learned how arrays work in PostgreSQL.

An array lets us store multiple values in a single column.

For example, instead of storing requirements like this:

"Finish my coffee, Walk the dog, Have a dance break"

as one text value, we can store them as an actual array.

## Lectures

### - Overview of Arrays

- What arrays are
- Why storing multiple values in one text column can cause problems
- When a separate table is a better solution
- Introduction to PostgreSQL arrays

### - Creating a First Array

- Creating an array column
- Using `VARCHAR[]`
- Using the SQL standard `VARCHAR ARRAY`
- Creating arrays using `ARRAY[...]`
- Creating PostgreSQL arrays using `{}`

Example:

```sql
ARRAY['Finish my coffee', 'Walk the dog', 'Have a dance break']

### - Accessing Array Elements and Slices

- Getting the length of an array using `array_length()`
- Accessing individual array elements using square brackets
- PostgreSQL arrays start counting from `1`
- Accessing a range (slice) of an array using `:`

Examples:

```sql
array_length(requirements, 1)

requirements[1]

requirements[1:2]

requirements[2:]

 - Should We Use Arrays?
Arrays are useful, but they should not automatically be used
Some tools and libraries may not support SQL arrays
Arrays can make migrating to another database more difficult
A separate table is usually better when individual elements need their own data
Separate tables are easier to extend with additional columns
Large arrays can be more expensive to update
Arrays are most suitable when the values are completely dependent on the parent record
If the values are accessed or modified independently, a separate table is usually better 