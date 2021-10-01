USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
                       id INT UNSIGNED AUTO_INCREMENT,
                       artist VARCHAR(35) NOT NULL,
                       name VARCHAR(65) NOT NULL,
                       release_date DATETIME NOT NULL,
                       sales DOUBLE NOT NULL DEFAULT 0,
                       genre VARCHAR(35) NOT NULL,
                       PRIMARY KEY (id)
);