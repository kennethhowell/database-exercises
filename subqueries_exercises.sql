use employees;

/* Find all the employees with the same hire date as employee 101010 using a subquery.

69 Rows */

select concat(first_name, ' ', last_name) as 'Employee Name'
    from employees
        where emp_no in(
            select emp_no
            from employees
            where hire_date  ='1990-10-22'
            );
select * from employees where emp_no = 101010;

/*Find all the titles held by all employees with the first name Aamod.

314 total titles, 6 unique titles*/

select title
from titles
    where emp_no in (
        select emp_no
        from employees
        where first_name = 'Aamod'
        );

/*Find all the current department managers that are female. */

select concat(first_name, ' ', last_name) as 'Name of Manager'
    from employees
    where emp_no in(
        select emp_no
        from dept_manager
        where gender = 'F' AND to_date > now()
        );

# find all the department names that currently have female managers

select dept_name as 'Department'
    from departments
    where dept_no in (
        select dept_no
        from dept_manager
        where to_date > now() and emp_no in (
            select emp_no
            from employees
            where gender ='F'
            )
        );


# find the first and last name of the emeployee with the highest salary


select concat(first_name, ' ', last_name) AS 'Moneybags'
    from employees
    where emp_no in (
        select emp_no
        from salaries
        where salary in (
            select MAX(salary)
            from salaries
            )
        );


select * from salaries order by salary desc;
select * from employees where emp_no = 43624;
select * from employees where emp_no = 43624;
select * from employees where emp_no = 43624;