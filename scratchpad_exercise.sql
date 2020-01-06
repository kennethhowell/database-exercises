# use codeup_test_db;
#
#
# describe albums;
#
# alter table albums add unique (artist_name, record_name);
#
# SELECT * from albums;
#
# show create table albums;
#
# use employees;
#
# select concat(first_name, ', ', last_name), emp_no from employees
#
# select * from dept_manager where emp_no = 110022;
# select * from dept_emp where emp_no = 110022;
#
# select * from employees where emp_no = 110022;
#
# select * from departments where dept_no = 'd001';
#

use music_db;

DESCRIBE DeimosPlayer;

SELECT COUNT(*) from DeimosPlayer;

SELECT artist_name, song_name, SEC_TO_TIME(duration) from DeimosPlayer ORDER BY duration DESC LIMIT 3;
SELECT artist_name, song_name, duration from DeimosPlayer ORDER BY duration DESC LIMIT 3;

SELECT artist_name, COUNT(*) from DeimosPlayer GROUP BY artist_name ORDER BY COUNT(*) DESC;

SELECT song_name, artist_name FROM DeimosPlayer WHERE song_name = 'non mauris morbi non';

SELECT MAX(LENGTH(duration)) FROM DeimosPlayer;