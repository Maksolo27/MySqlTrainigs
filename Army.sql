

create database army;

use army;

create table soldiers
(
	id int auto_increment not null,
    name nvarchar(30) not null,
    rankk nvarchar(30),
    primary key(id)
);

create table weapons
(
	soldier_id int not null,
    giver_id int not null,
    troop int not null,
    weapon nvarchar(30) not null,
    foreign key(soldier_id) references soldiers(id),
    foreign key(giver_id) references soldiers(id)
);

insert into soldiers(name, rankk)
values("Петров В. А.", "оф.205"),
("Духов В. А.", "оф.205"),
("Лодарев П. С.", "оф.205"),
("Леонтьев К. В.", "оф.201"),
("Деребанов В. Я.", "подполковник"),
("Рыбаков Н. Г.", "Майор"),
("Буров О. С.", "Майор");

insert into weapons(soldier_id, giver_id, troop, weapon)
values(1, 7, 222, "АК-47"),
(1, 6, 222, "Глок20"),
(3, 5, 232, "АК-74"),
(3, 6, 232, "Глок20"),
(4, 7, 212, "АК-47"),
(4, 6, 212, "Глок20"),
(2, 7, 200, "АК-47");


