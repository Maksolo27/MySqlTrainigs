
Create database Countrys;

use Countrys;

create table population
(
	name nvarchar(30),
	quantity int not null,
    quantityPerMeter int not null,
    primary key(name)
);

create table area
(
	name nvarchar(30),
	area int not null,
    foreign key(name) references population(name)
);
insert into population(name, quantity, quantityPerMeter)
values("Ukraine", 40000000, 40000000/3000000),
("Belarus", 10000000, 10000000/1000000),
("Russia", 100000000, 100000000/50000000);

insert into area(name, area)
values("Ukraine", 3000000),
("Belarus",10000000),
("Russia", 100000000);

select * from population where quantitypermeter < 11;

update area
set area = area + 1000
where name = "Belarus";

select * from area where name = "Belarus";













