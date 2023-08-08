show databases;

drop database sampleDB;

create database sampleDB;

use sampleDB;

create table BusinessCard( Name varchar(255),
							Address varchar(255),
                            Telephone varchar(255)
                            );
insert into BusinessCard values('Bob', 'Secho-dong 123', '123-4567');
insert into BusinessCard values('Sam', 'Sindang-dong 456', '321-4321');

drop table BusinessCard;

desc BusinessCard;
select * from BusinessCard;

alter table BusinessCard add column ID int;
alter table BusinessCard change Address Address1 varchar(255);
alter table BusinessCard modify Address1 char(255);

update BusinessCard set ID = 1 where Name = 'Bob';
alter table BusinessCard add Primary key(ID);
alter table BusinessCard add Unique(ID);
alter table BusinessCard alter Address1 set default 'Seoul';
alter table BusinessCard rename BusinessCards;

desc BusinessCards;
