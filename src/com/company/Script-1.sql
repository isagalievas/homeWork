create table students(
id integer primary key,
full_name varchar(100),
groupss_id integer references groupss (id),
date_of_birth timestamp
);

insert into students 
values (7, 'Isakov Kutman', 6, '2003-05-06 14:27' );

create table groupss(
id integer primary key,
faculties_id integer references faculties (id),
group_code integer
);

insert into groupss 
values (6, 5, 1029384756);

create table faculties(
id integer primary key,
name_of_faculty varchar (150),
university_id integer references university (id) 
);

insert into faculties 
values (5, 'journalism', 1);

create table university(
id integer primary key,
name_of_university varchar (300)
);

insert into university 
values (1, 'Kyrgyz National University');

create table items(
id integer primary key,
name_of_items varchar(50)
);

insert into items 
values (2, 'english');

create table marks(
students_id integer references students (id),
mark integer,
items_id integer references items (id)
);

insert into marks 
values (7, 5, 2 );

select full_name, group_code, name_of_faculty, name_of_university 
from students s , groupss g , faculties f , university u ;