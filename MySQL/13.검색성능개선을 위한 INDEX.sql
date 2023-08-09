use sampleDB;

show tables;

show create table BusinessCards;

drop table BusinessCards;

create table BusinessCard (ID int auto_increment,
							Name varchar(255),
                            Address varchar(255),
                            Telephone varchar(255),
                            primary key(ID),
                            Unique key(name)
                            );
                            
insert into BusinessCard (Name, Address, Telephone) values('Bob','Seoul', '123-4567');
insert into BusinessCard (Name, Address, Telephone) values('Sam','Busan', '892-4567');

select * from BusinessCard;

create index BusinessCard_Telephone_index on BusinessCard(Telephone);


-- 실습
use world;

create table BusinessCard (ID int auto_increment,
							Name varchar(255),
                            Address varchar(255),
                            Telephone varchar(255),
                            primary key(ID),
                            Unique key(name)
                            );

insert into BusinessCard (Name, Address, Telephone) values('Bob','Seoul', '123-4567');
insert into BusinessCard (Name, Address, Telephone) values('Sam','Busan', '892-4567');

select * from BusinessCard;

show create table BusinessCard;

create index BusinessCard_Name_index on BusinessCard(Name);

alter table businesscard drop index BusinessCard_Name_index;


show databases;

use employees;

show tables;

desc employees;

select * from employees limit 10;
select count(*) from employees;

select * from employees where emp_no = 20000;

select * from employees where last_name = 'Matzke' and first_name = 'Jenwei';

create index employees_index on employees(last_name, first_name);

select * from employees where last_name = 'Matzke' and first_name = 'Jenwei';

alter table employees drop index employees_index;