use world;

desc country;
desc city;

-- JOIN

select *
from country c
join city ct on c.Code = ct.CountryCode; -- 4079


select *
from city ct
join country c on c.Code = ct.CountryCode; -- 4079행

select ct.CountryCode, c.GNP
from city ct
join country c on c.Code = ct.CountryCode;

select *
from city ct
right join country c on c.Code = ct.CountryCode; -- 4086행

select count(*)
from city
where CountryCode is null;

select count(*)
from city
left join country on country.Code = city.CountryCode; -- 4079
-- country 값이 존재하지 않는 city 포함
-- inner join 과 left join 결과가 같다는 것은
-- 

select count(*)
from city
right join country on country.Code = city.CountryCode; -- 4086
-- country중 도시 수가 하나도 없는 country 포함 
