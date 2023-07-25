use world;

select * from country where CODE = 'KOR';

desc city;

-- DISTINCT 연산자
select CountryCode from city where CountryCode = 'KOR';
select distinct CountryCode from city where CountryCode = 'KOR';

-- 논리연산자 (AND, OR, NOT)
SELECT * FROM CITY WHERE countryCode = 'KOR' AND Population >= 1000000;
SELECT * FROM CITY WHERE countryCode = 'KOR' OR countryCode = 'CHN' OR countryCode = 'JPN';
SELECT * FROM CITY WHERE NOT countryCode = 'KOR' AND Population >= 1000000;

-- 논리연산자 (IN, BETWEEN)
SELECT * FROM CITY WHERE countryCode IN ('KOR', 'CHN', 'JPN');
SELECT * FROM CITY WHERE countryCOde = 'KOR' AND Population BETWEEN 1000000 AND 50000000;

-- ORDER BY
select *
from city 
where CountryCode = 'KOR'
order by population desc;

select CountryCode, population
from city
order by CountryCode, population desc;

-- LIMIT
SELECT * 
FROM CITY 
WHERE CountryCode = 'KOR' 
ORDER BY POPULATION desc limit 10;

-- 집합 함수
select count(*)
from city
where CountryCode = 'KOR';

select sum(population), round(avg(population))
from city
where CountryCode = 'KOR';

select max(population), min(population)
from city
where CountryCode = 'KOR';


-- 유용한 함수
select name
from country;

select length(name)
from country;

select upper(mid(name,1,3))
from country;

desc country;

select name, round(lifeExpectancy,0)
from country;



