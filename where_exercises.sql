use employees;

# SELECT first_name, last_name, gender FROM employees WHERE ((first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'm');
SELECT first_name, last_name, emp_no FROM employees WHERE last_name LIKE 'E%' or last_name like '%e';
# SELECT first_name, last_name, emp_no FROM employees WHERE last_name LIKE 'E%' and last_name like '%e';
# SELECT first_name, last_name, emp_no, hire_date FROM employees WHERE hire_date LIKE '199%';
# SELECT first_name, last_name, birth_date FROM employees WHERE birth_date LIKE '%-12-25';
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%-12-25' AND hire_date like '199%';
SELECT first_name, last_name, emp_no FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%QU%';
# SELECT first_name, last_name, emp_no FROM employees WHERE last_name LIKE '%q%';