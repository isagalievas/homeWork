create table mentors(
id integer primary key,
name varchar(30),
phone varchar (50)
);

insert into mentors 
values (1, 'Baizhigit', '+996708987665');

insert into mentors 
values (2, 'Alim', '+996708986765');

insert into mentors 
values (3, 'Ruslan', '+996708987656');

create table classroom(
id integer primary key,
name varchar(50)
);

insert into classroom 
values (1, '8.2');

insert into classroom 
values (2, '8.2');

insert into classroom 
values (3, '8.3');

create table lang(
id integer primary key,
name varchar(50)
);

insert into lang
values (1, 'java');

insert into lang
values (2, 'c#');

insert into lang
values (3, 'python');

create table timeslot(
id integer primary key,
stardate date,
enddate date 
);

insert into timeslot 
values (1, '2022-03-22 19:00:00', '2022-03-22 20:30:00');

insert into timeslot 
values (2, '2022-03-22 20:30:00', '2022-03-22 21:30:00');

insert into timeslot 
values (3, '2022-03-22 19:00:00', '2022-03-22 19:00:00');

create table it_group(
id integer primary key,
name varchar(30),
mentors_id integer references mentors (id) unique ,
classroom_id integer references classroom (id),
lang_id integer references lang (id),
timeslot_id integer references timeslot (id),
unique (classroom_id, timeslot_id)
);

insert into it_group 
values (2, 'It.Academy',3 , 2, 3, 1);

create table student(
id integer primary key,
name varchar (50),
it_group_id integer references it_group (id),
phone varchar (50),
personal_info_id integer references personal_info (id)
);

insert into student
values (1, 'Koshoy', 2, '+996555768901', 1 );

insert into student
values (2, 'Hasan', 2, '+996555768902', 2 );

insert into student
values (3, 'Chyngyz', 2, '+996555768903', 3 );

create table personal_info(
id integer primary key,
inn varchar (14) unique,
address varchar (300)
);

insert into personal_info 
values (1, '10293847561230', 'Auezova');

insert into personal_info 
values (2, '10293847561212', 'Ahunbaeva');

insert into personal_info 
values (3, '10293847563234', 'Pravda');

create table mark(
id integer primary key,
student_id integer references student (id),
score integer,
homework_id integer references homework (id)
);

insert into mark
values (1, 1, 100, 1);

insert into mark
values (2, 2, 67, 1);

insert into mark
values (3, 3, 78, 1);

create table homework(
id integer primary key,
name varchar (50),
instruction text
);

insert into homework 
values (1, 'postgreSQL', 'скачать и установить по ссылке');

create table payments(
id integer primary key,
amount decimal(18,3),
createDate date,
student_id integer references student (id)
);

insert into payments 
values (1, 10000.00, '2021-09-20 18:37:00', 1);

insert into payments 
values (2, 10000.00, '2021-09-15 09:10:00', 2);

insert into payments 
values (3, 10000.00, '2021-09-17 15:00:00', 3);


select sum(amount)
from payments p 
group by p.student_id between p.createdate;


select sum(amount)
from payments p 
group by p.student_id;

	
SELECT AVG(score)  
FROM mark m 
group by m.student_id; 

select score  
from mark m
where score > 61;

select count (*)
from student s 
group by s.it_group_id;
