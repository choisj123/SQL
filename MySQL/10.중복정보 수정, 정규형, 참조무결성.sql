use world;

-- 참조 무결성
insert into country (Code, Name) values('ZZZ', 'ZZZ');
insert into city (Name, CountryCode) values('YYY','ZZZ');

delete from city where Name = 'YYY' and countrycode = 'ZZZ';
delete from country where code = 'ZZZ' and code = 'ZZZ';
-- 순서 바꾸면 에러!

show create table city;
