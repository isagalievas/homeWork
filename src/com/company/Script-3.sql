create table visitiors(
full_name varchar(100),
date_of_birth integer ,
visits_id integer references visits(id),   
foreign key (visits_id) references visits (id),
gender boolean
);

insert into visitiors
values ('Maratov Jamin',23-03-2003, 1, true);


create table visits(
id integer primary key,
visitor varchar(100),
visiting_time timestamp,
trainer varchar (50)
);

insert into visits 
values (5, 'Maratov Jamin','2011-05-06 15:34' ,'Isakov Kutman');

insert into visits 
values (2, 'Ishenov Baky','2011-05-06 14:30' ,'Isakov Kutman');

insert into visits 
values (3, 'Ulanov Syimyk','2011-05-06 14:27' ,'Isakov Kutman');

insert into visits 
values (4, 'Akylbekov Shergazy','2011-05-06 15:00' ,'Isakov Kutman');


select visitor, visiting_time, trainer
from visits v 
order by v.visiting_time asc;

create table trainer(
full_name varchar (150),
visits_id integer references visits(id),   
foreign key (visits_id) references visits (id),
phone_number varchar (50)
);

insert into trainer 
values ('Isakov Kutman', 1, '+996705677678');