-- CREATE VIEW Clause 
-- Create a public employee view


CREATE VIEW employee_public_view AS
SELECT
    firstname,
    lastname,
    email,
    role
FROM employees;

SELECT *
FROM employee_public_view
ORDER BY role ASC, email ASC;