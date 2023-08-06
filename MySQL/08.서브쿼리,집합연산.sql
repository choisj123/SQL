use world;

desc city;
select * from city;

-- 서브쿼리(단일행)
-- join으로도 가능
select * from country where name = 'South Korea';
select code from country where name = 'South Korea';
select count(*) from city where countryCode = (select code from country where name = 'South Korea');

select avg(population) from city where countrycode = 'KOR';
select name, population from city where Population > (select avg(population) from city where countrycode = 'KOR');