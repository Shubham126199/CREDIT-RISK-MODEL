CREATE DATABASE hello_world_db;
DROP DATABASE hello_world_db;
show databases;
CREATE DATABASE dog_walking_app;
show databases;
USE dog_walking_app;
SELECT database();
CREATE DATABASE cat_app;
USE cat_app;
CREATE TABLE cats (name VARCHAR(100), age INT);
SHOW tables;
SHOW COLUMNS FROM cats;
DROP TABLE cats;
SHOW tables;
CREATE DATABASE pastries_shop;
USE pastries_shop;
CREATE TABLE pastries_list(name VARCHAR(50), quantity INT);
SHOW TABLES;
SHOW COLUMNS FROM pastries_list;
DROP TABLE pastries_list;

#INSERT DATA

CREATE TABLE cats (name VARCHAR(100), age INT);
show tables;
INSERT INTO cats (name, age) VALUES ('BLUE', 1);
SHOW COLUMNS FROM cats;
INSERT INTO cats (age,name) VALUES (11, 'DRACO');
SELECT * FROM cats;
INSERT INTO cats (name, age) VALUES ('charlie', 10), ('sadie', 3), ('lazy bear', 1);
SELECT * FROM cats;
CREATE TABLE people (first_name VARCHAR(20), last_name VARCHAR(20), age INT);
INSERT INTO people (first_name, last_name, age) VALUES ('Tina', 'Belcher', 25);
INSERT INTO people (last_name, first_name, age) VALUES ('Belcher', 'Bob', 42);
INSERT INTO people (first_name, last_name, age) VALUES ('Linda', 'Belcher', 45), ('Phillip', 'Frond', 38), ('Clavin', 'Fishhoeder', 70);
SELECT * FROM people;
DROP TABLE people;
SHOW TABLES;
INSERT INTO cats (name) VALUES ('Alabama');
SELECT * FROM cats;
CREATE TABLE cats2 (name VARCHAR(100) NOT NULL , age INT NOT NULL );
DESC cats2;
INSERT INTO cats2 (name) VALUES ('Texas');
SHOW WARNINGS;
SELECT * FROM cats2;
INSERT INTO cats2(age) VALUES (7);
SHOW WARNINGS;
SELECT * FROM cats2;
SHOW TABLES;
SELECT * FROM cats2;
CREATE TABLE cats3 (name VARCHAR(150) DEFAULT 'unnamed', age INT DEFAULT 99);
DESC cats3;
INSERT INTO cats3(age) VALUES (13);
SELECT * FROM cats3;
INSERT INTO cats3() VALUES ();
SELECT * FROM cats3;
INSERT INTO cats3(name, age) VALUES ('DELHI', NULL);
SELECT * FROM cats3;
CREATE TABLE cats4 (name VARCHAR(50) NOT NULL DEFAULT 'NOT A NAME', age INT NOT NULL DEFAULT 99);
DESC cats4;
INSERT INTO cats4 (name, age) VALUES ('MUMBAI', NULL);
SELECT * FROM cats;
INSERT INTO cats (name, age) VALUES ('Helena', 6);
INSERT INTO cats (name, age) VALUES ('Helena', 6);
INSERT INTO cats (name, age) VALUES ('Helena', 6);
INSERT INTO cats (name, age) VALUES ('Helena', 6);
INSERT INTO cats (name, age) VALUES ('Helena', 6);
INSERT INTO cats (name, age) VALUES ('Helena', 6);	
SELECT * FROM cats;
#Term-PRIMARY KEY(unique identifier for same name and other columns)

CREATE TABLE unique_cats(cat_id INT NOT NULL , name VARCHAR (100), age INT , PRIMARY KEY (cat_id));
DESC unique_cats;
INSERT INTO unique_cats(cat_id,name,age) VALUES (1, 'New Delhi', 23);
select * from unique_cats;
INSERT INTO unique_cats(cat_id,name,age) VALUES (1, 'New york', 23);
INSERT INTO unique_cats(cat_id,name,age) VALUES (2, 'New york', 23);
select * from unique_cats;
#how to avoid manually specifying primary key

CREATE TABLE unique_cats2(cat_id INT NOT NULL AUTO_INCREMENT , name VARCHAR(45), age INT , PRIMARY KEY (cat_id));
SELECT*FROM unique_cats2;
DESC unique_cats2;
INSERT INTO unique_cats2(name, age) VALUES ('SKIPPY', 4);
SELECT*FROM unique_cats2;
INSERT INTO unique_cats2(name, age) VALUES ('Jarves', 4);
SELECT*FROM unique_cats2;
INSERT INTO unique_cats2(name, age) VALUES ('Jarves', 4);
INSERT INTO unique_cats2(name, age) VALUES ('Jarves', 4);
INSERT INTO unique_cats2(name, age) VALUES ('Jarves', 4);
INSERT INTO unique_cats2(name, age) VALUES ('SKIPPY', 4);
INSERT INTO unique_cats2(name, age) VALUES ('SKIPPY', 4);
SELECT*FROM unique_cats2;
#Exercise
CREATE TABLE employment(id INT NOT NULL AUTO_INCREMENT, last_name VARCHAR(50) NOT NULL, first_name VARCHAR(50) NOT NULL, middle_name VARCHAR(50), 
age INT NOT NULL, 
current_status VARCHAR(100) NOT NULL DEFAULT 'EMPLOYED',  
PRIMARY KEY (id));
DESC employment;
INSERT INTO employment (first_name, last_name, age) VALUES ('Shubham', 'Gupta', 25);
SELECT*FROM employment;

#CRUD Commands (CREAT,READ,UPDATE,DELETE)
DROP TABLE cats;
CREATE TABLE cats(cat_id INT NOT NULL AUTO_INCREMENT , name VARCHAR(100), breed VARCHAR(100), age INT, PRIMARY KEY (cat_id));
DESC cats;
INSERT INTO cats(name, breed, age) VALUES ('Ringo', 'Tabby', 4), ('Cindy', 'Maine Coon', 10), ('Dumbledore', 'Maine Coon', 11), ('Egg', 'Persian', 
4), ('Misty', 'Tabby', 13), ('George Michael', 'Ragdoll', 9), ('Jackson', 'Sphynx', 7);

#READ
SELECT*FROM cats;
SELECT name FROM cats;
SELECT age FROM cats;
SELECT name, age FROM cats;
SELECT * FROM cats WHERE age=4;
SELECT * FROM cats WHERE name='Egg';


































































