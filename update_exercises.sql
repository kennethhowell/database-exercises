USE codeup_test_db;

SELECT * FROM albums;
SELECT 'Increasing sales by 10' AS 'Info';
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_date <= 1980;
SELECT 'going back to the 1800s' AS 'Info';

UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;


SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
SELECT 'PETAH JACKSON' AS 'Info';

UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
