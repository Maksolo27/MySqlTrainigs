Create database MyJoinsDB;

use MyJoinsDB;

create table PhoneNumber
(	
	phone_id int auto_increment not null,
	number varchar(15),
    name varchar(30),
    primary key(phone_id)
);

create table positions
(
	position_id int auto_increment not null,
	salary int,
    position varchar(30),
    primary key(position_id)
);

create table personalInformation
(
	personal_id int auto_increment,
	marriaged boolean,
    age int,
    place varchar(30),
    primary key(personal_id)
);

insert into PhoneNumber(name, number)
values("Anton", "+38096032843"),
("Pavel", "+38062092661"),
("Artem", "+38085007940");

insert into positions(salary, position)
values(20000, "Manager"),
(30000, "Director"),
(15000, "Worker");

insert into personalInformation(marriaged, age, place)
values(true, 29, "Kyiv"),
(false, 25, "Kharkiv"),
(false, 22, "Kyiv");

select PN.name, PN.number, PI.place from PhoneNumber PN
		left join personalinformation PI
        on PN.phone_id = PI.personal_id
        group by PN.name;
        
        
select PN.name, PN.number from phonenumber PN
		right join personalinformation PI
		on pi.personal_id = PN.phone_id
        where pi.marriaged = false
        group by PN.name;
        
select PN.name, Pn.number, Pi.age from phonenumber PN
		right join personalinformation PI
        on pi.personal_id = pn.phone_id
        right join positions pos
        on pi.personal_id = pos.position_id
        where pos.position = "Manager"
        group by Pn.name;
		
        

        