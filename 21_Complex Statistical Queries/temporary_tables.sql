CREATE TEMPORARY TABLE salaries_with_total_pay_avg (
	id INTEGER PRIMARY KEY,
	year INTEGER,
	employee_name VARCHAR(100),
	total_pay DECIMAL(11, 2),
	total_pay_avg DECIMAL(11, 2)
);
 
INSERT INTO salaries_with_total_pay_avg (
	SELECT id, year, employee_name, total_pay, AVG(total_pay) OVER(PARTITION BY year) AS total_pay_avg
	FROM salaries
);
 
SELECT id, year, employee_name, total_pay, total_pay_avg
FROM salaries_with_total_pay_avg
WHERE total_pay > total_pay_avg;
 
SELECT COUNT(*) FROM salaries_with_total_pay_avg;
 
CREATE INDEX salaries_with_total_pay_avg_index ON salaries_with_total_pay_avg (total_pay_avg);
SELECT * FROM salaries_with_total_pay_avg ORDER BY total_pay_avg ASC FETCH FIRST 10 ROWS ONLY; 