-- 스키마 정의
create database sampleDB;

show databases;

use sampleDB;

create table BusinessCard(id int not null auto_increment, 
							Name varchar(255) unique, 
							Address varchar(255) default 'Seoul', 
							Telephone varchar(255),
							primary key(id)
						);
                        
show tables;
show create table BusinessCard;
desc BusinessCard;

insert into BusinessCard(Name, Address, Telephone) values('Bob', 'Seocho-dong 123', '123-4567');
insert into BusinessCard(Name, Address, Telephone) values('Sam', 'Sindang-dong 456', '321-4321');

select * from BusinessCard;

show create table BusinessCard;

drop table BusinessCard;

-- 제약 조건

create table Salary(id int not null auto_increment,
					salary_amount int,
					business_card_id int not null,
                    primary key(id),
                    foreign key (business_card_id) references BusinessCard(id)
                    -- 참조무결성
                    );
insert into Salary(salary_amount, business_card_id) values(5000, 1);
insert into Salary(salary_amount, business_card_id) values(6000, 2);

select * from Salary;

Drop table Salary;

drop database sampleDB;
