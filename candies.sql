CREATE database candy_db;

USE candy_db;

CREATE TABLE types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
  );

CREATE TABLE candies(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    price_in_cents INT UNSIGNED NOT NULL,
    description VARCHAR(100) NOT NULL,
    type_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (type_id) REFERENCES types(id)
  );

SHOW DATABASES;


INSERT INTO types (name,description) VALUES
('Chewing Gum', 'Great for chewing!'),
('Chocolate', 'Great for chocolate goodness!'),
('Hard Candy', 'Don‘t bite too hard!'),
('Gummy Candy', 'Not too hard; not too soft.');

INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
('Doublemint Gum', 159, 'Standard chewing gum', 1),
('Orbit Gum', 110, 'Another standard chewing gum', 1),
('Hershey Bar', 210, 'Standard chocolate bar', 2),
('Gushers', 312, 'Nice and sour!', 4),
('Sour Patch Kids', 206, 'Quite sour!', 4),
('M&Ms', 199, 'Crunchy and chocolatey', 2);

SELECT c.name AS 'Candy Name', t.name AS 'Candy Type', price_in_cents AS 'PRICE' FROM candies c
JOIN types t on c.type_id = t.id
WHERE price_in_cents > 200;