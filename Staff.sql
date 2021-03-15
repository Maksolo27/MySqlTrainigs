drop database Staff;

Create database Staff;

use Staff;

create table PersonalInformation
(
	id int auto_increment not null,
	name varchar(40) not null,
    age int not null,
    residence varchar(50),
    married boolean,
    primary key(id)
);

create table ProffesionalInformation
(
	id int not null,
    position varchar(40) not null,
    experience int not null,
    salary int not null,
    foreign key(id) references PersonalInformation(id)
);
create table structur
(
	id int not null,
    chief int,
    subordinate_1 int,
    subordinate_2 int,
    subordinate_3 int,
    foreign key(id) references PersonalInformation(id),
    foreign key(chief) references PersonalInformation(id),
    foreign key(subordinate_1) references PersonalInformation(id),
    foreign key(subordinate_2) references PersonalInformation(id),
    foreign key(subordinate_3) references PersonalInformation(id)
);

insert into PersonalInformation(name, age, residence, married)
values("Ivanov Ivan", 30, "Shevchenko street 23/4", true),
("Petrov Petr", 22, "Paladina street 4", false),
("Maksimov Maksim", 25, "Teligy stree 8", false);

insert into ProffesionalInformation(id,position, experience, salary)
values(3,"Director", 6, 100000),
(2,"HR", 3, 20000),
(1,"Bookkepper", 2, 20000);

insert into structur(id, chief, subordinate_1,subordinate_2, subordinate_3)
values(3,null, 2,1, null),
(2, 3, null, null, null),
(1, 3, null, null, null);

select * from personalinformation group by id;
select * from proffesionalinformation group by id;
select * from structur group by id;




