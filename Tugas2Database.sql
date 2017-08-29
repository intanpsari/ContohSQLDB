-- N0.1
select * from city where population > 100000 and CountryCode = 'USA';

-- No. 2
select top 1 city, len(city) from station order by len(city), city; 
select top 1 city, len(city) from station order by len(city) desc, city;

-- No .3
select case
when a+b <= c or a+c <= b or b+c <= a then 'Not A Triangle' 
when a=b and b=c then 'Equilateral' 
when a=b or a=c or b=c then 'Isosceles'
else 'Scalene' 
end from triangles;

-- No .4
select 
    max(case when occupation = 'Doctor' then name else null end) as name1,
    max(case when occupation = 'Professor' then name else null end) as name2,
    max(case when occupation = 'Singer' then name else null end) as name3,
    max(case when occupation = 'Actor' then name else null end) as name4
from (select name, occupation,rank() over (partition by occupation order by name) as rank from occupations) A group by rank;

-- No. 5
Select Name+'('+left(occupation,1)+')' From OCCUPATIONS order by Name;
Select 'There are total', count(occupation) CountOccuption ,Lower(occupation)+'s.' from OCCUPATIONS 
group by occupation order by CountOccuption;