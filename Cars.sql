

CREATE DATABASE cars;

use cars;

create TABLE cars
(
	id int auto_increment not null primary key,
    mark VARCHAR(20),
    model VARCHAR(20),
    engineVolume double,
    price int,
    speed int
);


insert into cars(mark, model, engineVolume, price, speed)
values("BMW", "240", 3.0, 50000, 250);

insert into cars(mark, model, engineVolume, price, speed)
values("AUDI", "A6", 5.5, 70000, 350);

