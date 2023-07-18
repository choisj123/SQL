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

