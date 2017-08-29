
-- 1
SELECT title FROM movies;

SELECT director FROM movies;

SELECT title,director FROM movies;

SELECT title,year FROM movies;

SELECT * FROM movies;

-- 2
SELECT * FROM movies WHERE id=6;

SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

SELECT * FROM movies ORDER BY year LIMIT 5;

-- 3
SELECT * FROM movies WHERE title LIKE '%toy%';

SELECT title FROM movies WHERE director = 'John LASSETer';

SELECT title, director FROM movies WHERE director != 'John LASSETer';

SELECT * FROM movies WHERE title LIKE "WALL-_";

-- 4
SELECT DISTINCT DIRECTOR FROM movies ORDER BY DIRECTOR;

SELECT * FROM movies ORDER BY year DESC LIMIT 4;

SELECT *FROM movies ORDER BY title ASC LIMIT 5;

SELECT *FROM movies ORDER BY title ASC LIMIT 5 offSET 5;

-- 5
SELECT city, populatiON FROM north_american_cities WHERE COUNTry='Canada';

SELECT city FROM north_american_cities WHERE COUNTry='United States' ORDER BY latitude DESC;

SELECT city, lONgitude FROM north_american_cities WHERE lONgitude < -87.629798 ORDER BY lONgitude ASC;

SELECT city, populatiON FROM north_american_cities WHERE COUNTry LIKE "Mexico" ORDER BY populatiON DESC LIMIT 2;

SELECT city, populatiON FROM north_american_cities WHERE COUNTry LIKE "United States" ORDER BY populatiON DESC LIMIT 2 OFFSET 2;

-- 6
SELECT title, domestic_sales, internatiONal_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;

SELECT title, domestic_sales, internatiONal_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id WHERE internatiONal_sales > domestic_sales;

SELECT title, rating FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id ORDER BY rating DESC;

-- 7
SELECT DISTINCT building FROM employees;

SELECT * FROM buildings;

SELECT DISTINCT building_name, role FROM buildings LEFT JOIN employees ON building_name = building;

-- 8
SELECT name, role FROM employees WHERE building IS NULL;

SELECT DISTINCT building_name FROM buildings LEFT JOIN employees ON building_name = building WHERE role IS NULL;

-- 9
SELECT title, (domestic_sales+internatiONal_sales) /1000000 AS total  FROM movies, boxoffice WHERE movies.id=boxoffice.movie_id ;

SELECT Title, (Rating * 10) FROM movies JOIN BoxOffice WHERE movies.id=boxoffice.movie_id ;

SELECT title FROM movies WHERE year % 2 = 0;

-- 10
SELECT role, AVG(years_employed) FROM employees GROUP BY role;

SELECT building, SUM(years_employed) FROM employees GROUP BY building;

-- 11
SELECT role, COUNT(role) FROM employees WHERE role="ArtISt";

SELECT role, COUNT(years_employed) FROM employees GROUP BY role;

SELECT role, SUM(years_employed) FROM employees WHERE role="Engineer";

-- 12 
SELECT director, COUNT(director) FROM movies GROUP BY director;

SELECT director, SUM(domestic_sales+internatiONal_sales) FROM boxoffice, movies WHERE boxoffice.movie_id = movies.id GROUP BY director;

-- 13
INSERT INTO movies VALUES (NULL, "Toy Story 4", "intan", 2016, 100);

INSERT INTO boxoffice VALUES (15,8.7, 340000000, 270000000);

-- 14
UPDATE movies SET director = "John LASSETer" WHERE title = "A Bug's Life";

UPDATE movies SET year = 1999 WHERE title = "Toy Story 2";

UPDATE movies SET title="Toy Story 3", director="Lee Unkrich" WHERE id = 11;

-- 15
DELETE FROM movies WHERE year < 2005;

DELETE FROM movies WHERE director = "Andrew StantON";

-- 16
CREATE TABLE databASe(
    Name text,
    VersiON float,
    Download_COUNT int
);

-- 17
ALTER TABLE movies ADD ASpect_ratio float;

ALTER TABLE movies ADD Language text DEFAULT "EnglISh";

-- 18
DROP TABLE movies;

DROP TABLE boxoffice;
