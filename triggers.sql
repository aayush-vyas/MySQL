-- create table new_user(
--  name varchar(50)
-- );

-- created a trigger that will add name of user in new_user table whenever user insert into user table. 


DELIMITER $$
CREATE
	TRIGGER NEW_TRIGGER BEFORE INSERT ON user
    
    for each row
    begin
		insert into new_user values(new.name);
    end $$
DELIMITER ;


insert into user values(8, "prem", "prem@gmail.com");
insert into user values(9, "alex", "alex@gmail.com");
select *from new_user;

CREATE TABLE EMPLOYEE(
	name varchar(50),
    salary int not null, 
    month_worked int not null,
	total_income int
);




use new_test;
set @temp = 0;

DELIMITER $$
DROP TRIGGER IF EXISTS count_trigger$$
create 
	trigger count_trigger before insert on EMPLOYEE
    for each row
    begin 
        SET NEW.total_income = NEW.month_worked*NEW.salary;
    end $$

DELIMITER ;

insert into EMPLOYEE(name, salary, month_worked) values("denish", 100000, 6);

select *from EMPLOYEE;
