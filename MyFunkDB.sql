

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
(3, false, 27, "Kyiv");


delimiter |
drop procedure Ins; |
CREATE PROCEDURE Ins(iname varchar(40), inumber varchar(20))
BEGIN
DECLARE id int;
START TRANSACTION;
INSERT pnumber(name,pnumber )
VALUES ( iname , inumber );
set id = @@identity;
if exists(select * from pnumber where name = iname and pnumber = inumber and id != n_id )
then ROLLBACK;
end if;
COMMIT;
END;
|
call ins("Dima", "38096440212");

select * from pnumber
	left join personalinformation pi
    on pi.pi_id = pnumber.n_id
    left join salarys s
    on s.sal_id = pnumber.n_id
    group by name;







	
