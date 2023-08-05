use world;

-- LIKE
-- k로 시작하는
select countrycode from city where countrycode like 'K%';
-- k로 끝나는
select countrycode from city where countrycode like '%K';
-- k가 중간에
select countrycode from city where countrycode like '%K%';
-- k로 시작하는 3글자
select countrycode from city where countrycode like 'K__';


desc country;

-- NULL
select count(lifeExpectancy) from country;
select count(*) from country where lifeExpectancy is null;
select count(*) from country where lifeExpectancy is not null;

select avg(lifeExpectancy) from country; -- null값 미반영 66.48604
select avg(ifnull(lifeExpectancy,0)) from country; -- null값 반영 61.75690


select count(lifeExpectancy) from country; -- null값 미반영 222
select count(COALESCE(lifeExpectancy,0)) from country; -- null값 반영 239
select count(ifnull(lifeExpectancy,0)) from country;
select count(*) from country where lifeExpectancy is null; -- null값 개수 17

-- group by
select countryCode, count(countryCode) from city group by countrycode;

-- having
select countryCode, count(countryCode) from city group by countrycode having count(countrycode) >= 70;
