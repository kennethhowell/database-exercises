use employees;

SELECT DISTINCT last_name from employees ORDER BY last_name DESC LIMIT 10;
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%-12-25' AND hire_date like '199%' ORDER BY birth_date, hire_date DESC LIMIT 5 OFFSET 45;
