create table users (id serial primary key, first varchar(100), name varchar(100), age int ); --A table named user was created, containing the columns surname, first_name, and age.

create table emails(id serial primary key, email varchar(100) unique , users_id int references users(id)); --A table named emails was created, which has a column email and is linked to the users table through the users_id column.

insert into users (first, name, age) values('Bobomurodov', 'Umrbek', 22); -- The current view of the data that was added through the command to insert data into the users table.

select u.first, u.name. u.age, e.email from users u join emails e on u.id = e.users_id; -- In this case, the two tables are connected, with the users table linked by id and the emails table linked by users_id.
