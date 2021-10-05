USE employees;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'z%' ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no, salary FROM salaries
WHERE salary ORDER BY salary DESC
LIMIT 5;

SELECT emp_no, salary FROM salaries
WHERE salary ORDER BY salary DESC
LIMIT 5 OFFSET 45;

DESCRIBE employees;