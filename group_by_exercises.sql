use employees;

SELECT DISTINCT title FROM titles;

SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE 'E%' and last_name like '%e' GROUP BY last_name ORDER BY COUNT(*) DESC;

SELECT gender, MAX(birth_date), COUNT(*) FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') GROUP BY gender ORDER BY COUNT(*) DESC;


SELECT last_name, first_name FROM employees WHERE last_name LIKE 'E%' and last_name like '%e' GROUP BY last_name, first_name;


SELECT last_name, first_name FROM employees GROUP BY last_name, first_name;

SELECT first_name, last_name FROM employees GROUP BY first_name, last_name;

SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%QU%' GROUP BY last_name ORDER BY COUNT(*) DESC;

SELECT * FROM salaries;


