
-- Creating the database and table
create database EU_air_pollution;
use EU_air_pollution;
create table pollution(
    Region varchar(50),
    Country varchar(100),
    City varchar(100),
    Year int,
    pm25 decimal(6,2),
    pm10 decimal(6,2),
    no2 decimal(6,2),
    pm25_tempcov decimal(4,1),
pm10_tempcov decimal(4,1),
no2_tempcov decimal(4,1)
);

-- Pollution trends based on cities and years
select
    city as City,
    year as Year,
    round(avg(pm25), 2) as pm25,
    round(avg(pm10), 2) as pm10,
    round(avg(no2), 2) as no2
from pollution
group by city, year
order by city, year;

-- Average pollution for specific years
select
    city,
    round(avg(pm25), 2) as avg_pm25,
    round(avg(pm10), 2) as avg_pm10,
    round(avg(no2), 2) as avg_no2
from pollution
where year in (2018, 2019, 2020, 2021)
group by city
having count(distinct year) = 4
order by avg_pm25 desc;

-- Progress of cities between the initial and final years
select
    city,
    round(avg(case when year = 2017 then pm25 end) - avg(case when year = 2021 then pm25 end), 2) as pm25_improvement,
    round(avg(case when year = 2017 then pm10 end) - avg(case when year = 2021 then pm10 end), 2) as pm10_improvement,
    round(avg(case when year = 2017 then no2 end) - avg(case when year = 2021 then no2 end), 2) as no2_improvement
from pollution
group by city
having count(distinct case when year in (2017, 2021) then year end) = 2
order by pm25_improvement desc;

-- Pollution levels in Western and Northern Europe during specific years
select
    region,
    year,
    round(avg(pm25), 2) as avg_pm25,
    round(avg(pm10), 2) as avg_pm10,
    round(avg(no2), 2) as avg_no2
from (
    select
        city,
        year,
        pm25,
        pm10,
        no2,
        case
            when country in ('Austria','Belgium','France','Germany','Liechtenstein','Luxembourg','Netherlands','Switzerland')
                then 'western europe'
            when country in ('Denmark','Estonia','Finland','Iceland','Ireland','Latvia','Lithuania',
                             'Norway','Sweden','United Kingdom of Great Britain and Northern Ireland')
                then 'northern europe'
        end as region
    from pollution
) region_data
where region in ('western europe','northern europe')
  and year between 2017 and 2019
group by region, year
order by region, year;

-- Cities having pollution levels above WHO air quality guidelines for each pollutant and years during 2017-21
select
    city,
    case
        when min(pm25) > 5 then 'above_guideline'
        else 'not_consistent'
    end as pm25_levels,
    case
        when min(pm10) > 15 then 'above_guideline'
        else 'not_consistent'
    end as pm10_levels,
    case
        when min(no2) > 10 then 'above_guideline'
        else 'not_consistent'
    end as no2_levels
from pollution
where year between 2017 and 2021
group by city
having count(distinct year) = 5;

-- Cities having pollution levels below WHO air quality guidelines for PM2.5 and PM10 during 2020
select
    city,
    pm25,
    pm10
from pollution
where year = 2020
  and pm25 < 5
  and pm10 < 15
  and pm25 is not null
  and pm10 is not null;










