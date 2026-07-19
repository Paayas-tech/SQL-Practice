/*
=========================================
SECTION 9 - JOINS
Lecture 04: FULL JOIN
=========================================

What I learned:
- FULL JOIN returns all rows from both tables.
- Matching rows are combined.
- If there is no match, the missing side contains NULL.

Syntax:

SELECT columns
FROM table1
FULL JOIN table2
ON table1.column = table2.column;
*/

Example:

SELECT
    reviews.author_name AS Author_Name,
    reviews.review_text AS Review_Text,
    reviews.rating AS Rating_Number,
    businesses.name AS Business_Name,
    businesses.industry_type AS Industry_Type
FROM businesses
FULL JOIN reviews
ON businesses.id = reviews.business_id
ORDER BY businesses.name ASC, reviews.id DESC;
