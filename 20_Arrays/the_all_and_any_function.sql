--s Querying arrays with ANY

SELECT *
FROM todos
WHERE 'Have a dance break' = ANY(requirements);

-- ANY checks whether at least one element
-- in the array matches the given value.


-- ALL checks whether every element
-- in the array matches the given value.

SELECT *
FROM todos
WHERE 'Finish my coffee' = ALL(requirements);


-- Coding Exercise: ANY and ALL 1/2
-- Find employees with any dietary restriction

SELECT COUNT(*) AS total_employees
FROM food_restrictions
WHERE 1 = ANY(restrictions);

-- Coding Exercise: ANY and ALL 2/2
-- Find developers whose every project rating is 9 or above

SELECT employee_id, employee_name
FROM developer_performance_reviews
WHERE 9 <= ALL(ratings);