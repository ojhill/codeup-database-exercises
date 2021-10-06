USE codeup_test_db;
SELECT name AS 'All albums' FROM albums;

SELECT name,release_date AS 'All albums before 1980' FROM albums
WHERE release_date < 1980;

SELECT name, artist  As 'All albums from Michael Jackson' FROM albums
WHERE artist = 'Michael Jackson';

SELECT name, sales FROM albums;
UPDATE albums
SET sales = (sales *10);

SELECT name AS 'All albums in the table', release_date AS 'Release Date' FROM albums
WHERE release_date < 1900;

SELECT name AS 'All albums by Michael Jackson' FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT name AS 'All albums by Peter Jackson' FROM albums
WHERE artist = 'Peter Jackson';