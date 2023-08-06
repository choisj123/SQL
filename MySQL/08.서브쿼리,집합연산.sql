use world;

desc city;
select * from city;

-- 서브쿼리
-- 단일행
-- join으로도 가능
select * from country where name = 'South Korea';
select code from country where name = 'South Korea';
select count(*) from city where countryCode = (select code from country where name = 'South Korea');

select avg(population) from city where countrycode = 'KOR';
select name, population from city where Population > (select avg(population) from city where countrycode = 'KOR');

-- 다중행
select countrycode, count(*) 
from city 
where countrycode in (select code 
						from country 
						where name in ('South Korea', 'China', 'Japan')) 
group by countrycode; 

select name, countrycode, population
from city
where (name, countrycode) in (select name, countrycode 
								from city 
                                where population > 5000000);

-- 다중 컬럼
-- 한국의 모든(ALL) 도시의 인구 수보다 많은 도시
select name, countrycode, population
from city 
where population > ALL(select population from city where countrycode = 'KOR');

-- 한국의 어떤(ANY) 도시의 인구 수보다 많은 도시select name, countrycode, population from city where population > ANY(select population from city where countrycode = 'KOR');

-- city 테이블에서 'KOR' 국가코드를 가진 도시들이 있으면 city 테이블의 총 레코드 수를 출력하라(EXISTS)
-- 조건
select count(*) from city
where EXISTS (SELECT * FROM CITY WHERE CountryCode = 'KOR');

-- 집합연산
-- UNION
select * from city where countrycode = 'KOR'
UNION
select * from city where countrycode = 'CHN';
