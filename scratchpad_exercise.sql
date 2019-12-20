use codeup_test_db;


describe albums;

alter table albums add unique (artist_name, record_name);

SELECT * from albums;

show create table albums;

use employees;

select concat(first_name, ', ', last_name), emp_no from employees

select * from dept_manager where emp_no = 110022;
select * from dept_emp where emp_no = 110022;

select * from employees where emp_no = 110022;

select * from departments where dept_no = 'd001';

