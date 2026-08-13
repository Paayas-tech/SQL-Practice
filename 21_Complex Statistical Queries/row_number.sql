-- ROW_NUMBER()
-- Number all employees by total pay

SELECT
    employee_name,
    year,
    total_pay,
    ROW_NUMBER() OVER(
        ORDER BY total_pay DESC
    ) AS row_number
FROM salaries;

-- Exercise: Name-based employee position

SELECT
    *,
    ROW_NUMBER() OVER (
        ORDER BY firstname ASC, lastname ASC, id ASC
    ) AS name_based_position
FROM employees
ORDER BY id ASC;