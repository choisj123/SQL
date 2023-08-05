use world;

-- case .. when .. end
select case when length(name) > 3 then upper(mid(name,1,3))
			when length(name) <= 3 then upper(name)
            end, Population
from city;

select count(*) from city_new;

select * from city_new;

insert into city_new select * from city where CountryCode = 'JPN';

insert into city_new select * from city where countrycode = 'CHN';

select distinct countrycode from city_new;

select name, population from city limit 10;