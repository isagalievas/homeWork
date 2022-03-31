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
values (1, 'Maratov Jamin','2011-05-06 15:34' ,'Isakov Kutman');


create table trainer(
full_name varchar (150),
visits_id integer references visits(id),   
foreign key (visits_id) references visits (id),
phone_number varchar (50)
);

insert into trainer 
values ('Isakov Kutman', 1, '+996705677678');