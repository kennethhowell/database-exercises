use employees;

#  write a query that shows each department along with the name of the current manager for that department.

select * from dept_manager;
select first_name, last_name from employees where emp_no = 110022;
select first_name, last_name from employees where emp_no = 110039;
select dept_name from departments where dept_no = 'd009';

select dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees
    join dept_manager
        on employees.emp_no = dept_manager.emp_no
    join departments
        on dept_manager.dept_no = departments.dept_no
where to_date LIKE '9999-%'
order by dept_name;

# Find the name of all departments currently managed by women.

select dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees
         join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
where gender = 'F' AND to_date LIKE '9999-%'
order by dept_name;

#Find the current titles of employees currently working in the Customer Service department.

select title, count(*)
from employees
    join titles
on employees.emp_no = titles.emp_no
    join dept_emp
on employees.emp_no = dept_emp.emp_no
where dept_no = 'd009' AND titles.to_date LIKE '9999-%'
group by title
order by title;

# Find the current salary of all current managers.

select dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Name', max(salary) as 'Salary'
from employees
         join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
        join salaries
              on employees.emp_no = salaries.emp_no
where dept_manager.to_date LIKE '9999-%'
group by dept_name, concat(employees.first_name, ' ', employees.last_name);