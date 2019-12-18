USE codeup_test_db;

SELECT * FROM albums WHERE artist_name = 'Pink Floyd';

SELECT 'Pink Floyd above, Sgt Pepper Below' AS 'Info';

SELECT release_date FROM albums WHERE record_name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Nevermind below' AS 'Info';

SELECT genre FROM albums WHERE record_name = 'Nevermind';

SELECT '90s albums below' AS 'Info';

SELECT * FROM albums WHERE release_date >= 1990;

SELECT 'Less than 20mil in sales below' AS 'Info';

SELECT * FROM albums WHERE sales <= 20;

SELECT 'Rock genre' AS 'Info';


SELECT * FROM albums WHERE genre = 'Rock';



