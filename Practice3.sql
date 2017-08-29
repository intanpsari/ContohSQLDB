-- No. 1
select max(population) - min(population) as difference from city;

-- No. 2
select max(months * salary) as earnings, count(months * salary) 
from employee group by (months * salary) 
order by earnings desc limit 1;

-- No. 3
select country.Continent, floor(avg(city.population)) 
from city, country 
where CITY.CountryCode = COUNTRY.Code 
group by country.Continent;

-- No.4
SELECT 
h.hacker_id,
h.name,
SUM(s.tot) as total_score 
FROM 
(SELECT max(score) as tot,challenge_id,hacker_id FROM submissions GROUP BY challenge_id,hacker_id) 
s LEFT JOIN hackers h 
on h.hacker_id=s.hacker_id 
GROUP BY h.hacker_id,h.name 
HAVING sum(s.tot)<>0 
ORDER BY sum(s.tot) DESC,h.hacker_id ASC;