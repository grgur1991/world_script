DROP DATABASE IF EXISTS World;
CREATE DATABASE World;
USE World;

CREATE TABLE Country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE State (
    state_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);


CREATE TABLE Town (
    town_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    state_id INT,
    FOREIGN KEY (state_id) REFERENCES State(state_id)
);


CREATE TABLE President (
    president_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);


INSERT INTO Country (name) VALUES
    ('USA'),
    ('Germany'),
    ('Croatia');


INSERT INTO State (name, country_id) VALUES
    ('New York', 1),
    ('California', 1),
    ('Bavaria', 2),
    ('Istria', 3),
    ('Dalmatia', 3),
    ('Slavonia', 3);


INSERT INTO Town (name, state_id) VALUES
    ('New York City', 1),
    ('Los Angeles', 2),
    ('Munich', 3),
    ('Rovinj', 4),
    ('Split', 5),
    ('Osijek', 6);


INSERT INTO President (name, country_id) VALUES
    ('John Smith', 1),
    ('Angela Merkel', 2),
    ('Ivo Josipović', 3);


UPDATE Town SET name = 'Augsburg' WHERE name = 'Munich';


DELETE FROM Town WHERE name LIKE 'za%';