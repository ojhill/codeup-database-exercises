USE codeup_test_db;
SELECT name AS 'All albums' FROM albums;

SELECT name,release_date AS 'All albums before 1980' FROM albums
WHERE release_date < 1980;

SELECT name, artist  As 'All albums from Michael Jackson' FROM albums
WHERE artist = 'Michael Jackson';

SELECT name, sales FROM albums;
UPDATE albums
SET sales = (sales * 10);
