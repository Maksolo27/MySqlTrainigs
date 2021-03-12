Drop database PersonDepartment;

create database PersonDepartment;

use PersonDepartment;

create table person
(
	id int auto_increment not null,
	name varchar(30) not null,
    vorname varchar(30)not null,
    position varchar(30) not null,
    age int not null,
    experience int,
    primary key(id)
);

create table salary
(
	id int auto_increment not null,
    salary int,
    person_id int not null unique,
    primary key(id),
    foreign key(person_id) references person(id)
);

insert into person(name, vorname, position, age, experience)
values("Alex", "Ivanov", "Manager", 25, 3),
("Ivan", "Petrov", "HR", 30, 7),
("Pavel", "James", "Bookkepper", 35, 10);

insert into salary(person_id, salary)
values(1, 20000),
(3, 40000),
(2, 70000);




