--  ADD COLUMN 

ALTER TABLE user
add gender varchar(50) default 'male';

select *from user;



-- drop column
alter table user
drop column gender;

-- modfiy column
alter table user
modify gender varchar(20) default 'not know yet';


alter table user
modify user_id int auto_increment not null;

select *from user;

insert into user(user_id, name, email) values(10,'zaid', 'zaid@gmail.com');

insert into user values(11, 'dhenish', null, 'male');

alter table user 
add constraint uq_email unique(email);

set SQL_SAFE_UPDATES = 0;

-- delete from user where email is null;

-- select *from user;

-- see all the constraint
select table_name, constraint_type, constraint_name from information_schema.table_constraints  where table_name = "user


-- rename table name using alter 

alter table table_name rename new_table_name
