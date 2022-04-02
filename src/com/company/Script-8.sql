create table routes(
id integer primary key,
route_number varchar (10) not null,
starting_point varchar(100), 
end_point varchar(100)
);

insert into routes 
values 
(1, '102-A', 'Аламедин-1', 'авторынок Кудайберген'),
(2, '107-B', 'Тунгуч', '12-микрорайон'),
(3, '109-C', 'Учкун', 'Автовозкал');

create table buses(
id integer primary key,
bus_number integer not null,
route_id integer unique,
foreign key (route_id) references routes(id)   
);

insert into buses
values 
(1, 36, 2),
(2, 38, 1),
(3, 7, 3);

create table drivers(
id integer primary key,
full_name varchar(100) not null,
bus_id integer,
foreign key (bus_id) references buses(id)
);

insert into drivers 
values 
(1, 'Исаков Кутман', 1),
(2, 'Исаков Кутман', 3),
(3, 'Исаков Кутман', 2),
(4, 'Уланов Сыймык', 2),
(5, 'Ишенов Бакы', 3),
(6, 'Ишенов Бакы', 2);

create table data_log(
id integer primary key,
driver_id integer,
foreign key (driver_id) references drivers(id),
bus_id integer,
foreign key (bus_id) references buses(id),
start_time timestamp,
end_time timestamp 
);

insert into data_log 
values 
(1, 1, 1, '2022-03-22 06:00:00', '2022-03-22 00:00:00'),
(2, 2, 3, '2022-03-23 06:00:00', '2022-03-23 00:00:00'),
(3, 3, 2, '2022-03-24 06:00:00', '2022-03-24 00:00:00'),
(4, 4, 2, '2022-03-22 06:00:00', '2022-03-22 00:00:00'),
(5, 5, 3, '2022-03-22 06:00:00', '2022-03-22 00:00:00'),
(6, 6, 2, '2022-03-23 06:00:00', '2022-03-23 00:00:00');
