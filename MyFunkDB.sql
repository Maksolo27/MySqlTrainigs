

create database MyFunkDB;

use MyFunkDB;

create table PNumber(
	n_id int auto_increment primary key,
	name varchar(40),
    pnumber varchar(20)
    );
create table Salarys(
	sal_id int,
	salary int,
	position varchar(30),
    foreign key (sal_id) references PNumber(n_id)
    );
create table personalinformation(
	pi_id int,
	marriaged boolean not null,
    age int,
    place varchar(30),
    foreign key (pi_id) references PNumber(n_id)
    );
insert into Pnumber(name, pnumber)
values("Vasya", "38096567841"),
("Petya", "38067039271"),
("Dima", "380950382402");


insert into Salarys(sal_id,salary, position)
values(1, 20000, "Manager"),
(2, 30000, "Director"),
(3, 20000, "Worker");

insert into personalinformation(pi_id, marriaged, age, place)
values(1, true, 25, "Kyiv"),
(2, false, 30, "Kharkiv"),
(3, false, 27, "Kyiv")

Delimiter |
Create procedure UpdateValues(IN newsalary int, IN newPosition varchar(30))
begin
declare id int;
start transaction;
insert salarys(salary, position) 
values(newsalary, newposition);
set id = @@identity;

if exists(select * from salarys where salary = newsalary and position = newposition and sal_id != id)
then rollback;
end if;
commit;
end;
|
call updatevalues(30000, "HR-Manager");
select * from salarys;





	
