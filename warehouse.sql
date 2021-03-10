drop database warehouse;

Create database warehouse;

use warehouse;

create table supplier
(
	id int auto_increment not null,
    name varchar(30),
    vorname varchar(30), 
    primary key(id)
);

create table employee
(
	id int auto_increment not null,
    name varchar(30),
    vorname varchar(30), 
    primary key(id)
);

create table clients
(
	id int auto_increment not null,
    name varchar(30),
    vorname varchar(30), 
    primary key(id)
);

create table orders
(
	id int auto_increment not null,
    id_sup int not null,
    id_emp int not null,
    id_client int not null,
    warename varchar(30),
    primary key(id),
    foreign key (id_sup) references supplier(id),
    foreign key (id_emp) references employee(id),
    foreign key (id_client) references clients(id)
);

insert into supplier(name, vorname)
values("Ivan", "Ivanov"),
("Petr", "Petrov");

insert into employee(name, vorname)
values("Arsen", "Arsenov"),
("Oleg", "Olegov");

insert into clients(name, vorname)
values("Maksim", "Maksimov"),
("Yuriy", "Yuriev");

insert into orders(id_sup, id_emp, id_client, warename)
values(2,1,2, "Tire"),
(1,1,1, "Water"),
(2,2,2,"Books");

