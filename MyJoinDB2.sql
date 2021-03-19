create database MyJoinsDB2;

use MyJoinsDB2;



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

select name, number,
        (select place from personalInformation pi
		where pi.personal_id = phone_id) as place
		from PhoneNumber
		group by name, number, place;
select name, number,
		(select marriaged from personalinformation pi
        where pi.personal_id = phone_id
        and pi.marriaged = false)
        as marriaged
        from phonenumber
        group by name, number,marriaged;
        
        
select name, number, (select age from personalinformation pi
		where pi.personal_id = phone_id) as age,
        (select position from positions pos
        where pos.position_id = phone_id
        and pos.position = "Manager") as position
        from phonenumber PN
        group by name, number, age, position;
        
        
        
				
		

