use employees;
#what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
select hire_date, gender, concat(first_name, ' ', last_name) from employees where gender = 'f' order by hire_date limit 10;
select hire_date, gender, concat(first_name, ' ', last_name) from employees where gender = 'f' order by hire_date DESC limit 10;


# what are the top three most common job titles?

select title, COUNT(*) from titles group by title order by count(*) DESC limit 3;

# what is the most common 'from date' for job titles? for staff only?

select from_date, COUNT(*) from titles group by from_date order by count(*) desc limit 1;

select from_date, count(*) from titles WHERE title = 'staff' group by from_date order by count(*) desc limit 1;

# what is the highest employee number for an engineer?

select emp_no from titles where title = 'engineer' group by emp_no order by emp_no desc;
# select emp_no, title from titles where title = 'engineer' order by emp_no desc;

# what is the most common birthday?

select birth_date, count(*) from employees group by birth_date order by count(*) desc limit 1;

# what is the most common female birthday? male?
select birth_date, count(*) from employees where gender = 'M' group by birth_date order by count(*) desc limit 1;
select birth_date, count(*) from employees where gender = 'M' group by birth_date order by count(*) desc;

select birth_date, count(*) from employees where gender = 'F' group by birth_date order by count(*) desc limit 1;
select birth_date, count(*) from employees where gender = 'F' group by birth_date order by count(*) desc;

# what is the most common hire date for female and male employees?
select hire_date, count(*) from employees where gender = 'M' group by hire_date order by count(*) desc limit 1;
select hire_date, count(*) from employees where gender = 'M' group by hire_date order by count(*) desc;


select hire_date, count(*) from employees where gender = 'F' group by hire_date order by count(*) desc limit 1;
select hire_date, count(*) from employees where gender = 'F' group by hire_date order by count(*) desc;

# what is the longest last name of someone born on March 8, 1952?
select last_name from employees where birth_date = '1952-03-08' group by last_name order by length(last_name) desc limit 1;



select last_name from employees order by length(last_name) desc;
select birth_date, last_name from employees where birth_date = '1952-03-08';

# what is the lowest employee number for the first senior engineers in the company?

select title, emp_no, from_date from titles where title = 'Senior Engineer' AND from_date LIKE '1985-02-0%' order by emp_no limit 1;

show indexes from titles;

