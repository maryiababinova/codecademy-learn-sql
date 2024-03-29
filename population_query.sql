-- What is the largest population size for Gabon in this dataset?
SELECT MAX(population) FROM population_years
WHERE country = 'Gabon';

-- What were the 10 lowest population countries in 2005?
SELECT country FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;

-- What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country FROM population_years
WHERE population > 100
AND year = 2010;

-- How many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT COUNT(*) FROM population_years
WHERE country LIKE '%Islands';

-- What is the difference in population between 2000 and 2010 in Indonesia?
SELECT (b.population - a.population) AS difference
FROM population_years a, population_years b
WHERE a.country='Indonesia' AND a.year=2000
AND b.country='Indonesia' AND b.year=2010;
