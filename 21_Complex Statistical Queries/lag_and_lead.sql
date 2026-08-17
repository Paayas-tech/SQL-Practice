-- LAG: Get the previous row's value
SELECT
    id,
    total_pay,
    LAG(total_pay) OVER (ORDER BY total_pay) AS previous_pay
FROM salaries
ORDER BY total_pay;


-- LEAD: Get the next row's value
SELECT
    id,
    total_pay,
    LEAD(total_pay) OVER (ORDER BY total_pay) AS next_pay
FROM salaries
ORDER BY total_pay;


-- LAG with PARTITION BY
SELECT
    year,
    id,
    total_pay,
    LAG(total_pay) OVER (
        PARTITION BY year
        ORDER BY total_pay
    ) AS previous_pay
FROM salaries
ORDER BY year, total_pay;