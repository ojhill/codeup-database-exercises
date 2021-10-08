CREATE database join_test_db;

USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM roles;

# SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;

INSERT INTO users (name, email, role_id) VALUES
('amanda', 'amanda@example.com', 1),
('kristen', 'kristen@example.com', 2),
('shelby', 'shelby@example.com', 3),
('patrick', 'patrick@example.com', 4);

SELECT users.name, roles.name FROM roles JOIN users On roles.id = users.role_id;
 INSERT INTO roles (name) VALUE ('agent');

SELECT * FROM roles;

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;

SELECT COUNT(users.name) AS 'users with role', roles.name FROM users RIGHT JOIN roles on roles.id = users.role_id GROUP BY roles.name ORDER BY COUNT(users.name);

SELECT roles.name, users.name FROM roles JOIN users ON roles.id = users.role_id;


USE codeup_test_db;

CREATE TABLE persons (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT UNSIGNED NOT NULL,
                         PRIMARY KEY (id),
                         FOREIGN KEY (album_id) REFERENCES albums (id)
);

CREATE TABLE preferences (
                             person_id INT UNSIGNED NOT NULL,
                             album_id INT UNSIGNED NOT NULL,
                             FOREIGN KEY (person_id) REFERENCES persons(id),
                             FOREIGN KEY (album_id) REFERENCES  albums(id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT p.first_name, a.name AS 'favorite album' FROM persons AS p JOIN preferences pref ON p.id = pref.person_id JOIN albums AS a ON a.id = pref.album_id;