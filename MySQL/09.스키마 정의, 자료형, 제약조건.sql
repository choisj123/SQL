use world;

create database sampleDB;

use sampleDB;

create table BusinessCard(Name varchar(255), Address varchar(255), Telephone varchar(255));

desc BusinessCard;

insert into BusinessCard values('Bob', 'Seocho-dong 123', '123-4567');
insert into BusinessCard values('Sam', 'Sindang-dong 456', '321-4321');

select * from BusinessCard;

drop table BusinessCard;

