CREATE DATABASE MyDB;

USE MyDB;

CREATE TABLE employers(
	id int auto_increment not null ,
	name varchar(30),
    telefonNumber varchar(16),
     primary key(id)
    );
    
CREATE TABLE salary(
	id int auto_increment not null,
	salary int,
    position varchar(30),
    primary key(id)
);

CREATE TABLE personalInformation(
	id int auto_increment not null,
	marriage tinyint,
    birthday varchar(20),
    place varchar(20),
    primary key(id)
);

INSERT INTO employers(name, telefonNumber)
VALUES("Mike","+380970269834");

INSERT INTO salary(salary, position)
VALUES(20000, "Manager");

INSERT INTO personalInformation(marriage, birthday, place)
VALUES(false, "1990-07-12", "Kiev");

INSERT INTO employers(name, telefonNumber)
VALUES("Thomas","+380870463354");

INSERT INTO salary(salary, position)
VALUES(50000, "DevOps");

INSERT INTO personalInformation(marriage, birthday, place)
VALUES(false, "1997-02-22", "Kiev");

INSERT INTO employers(name, telefonNumber)
VALUES("Ivan","+380835443338");

INSERT INTO salary(salary, position)
VALUES(6000, "Teacher");

INSERT INTO personalInformation(marriage, birthday, place)
VALUES(false, "1999-07-12", "Tula");

SELECT * FROM salary WHERE salary > 10000;

UPDATE personalInformation
SET marriage = true
WHERE id = 1;




