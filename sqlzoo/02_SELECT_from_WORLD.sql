-- #1

SELECT 
    name, 
    continent, 
    population 
FROM world;

-- #2

SELECT 
    name 
FROM world
WHERE population > 200E6;

-- #3

SELECT 
    name, 
    gdp/population 
FROM world
WHERE population >= 200E6;

-- #4

SELECT 
    name, 
    population/1E6
FROM world
WHERE continent = 'South America';

-- #5

SELECT 
    name, 
    population 
FROM world
WHERE name IN ('France','Germany','Italy');

-- #6

SELECT 
    name
FROM world
WHERE name LIKE '%United%';

-- #7

SELECT 
    name, 
    population, 
    area 
FROM world
WHERE population >= 250E6 
   OR area >= 3E6;

-- #8

SELECT 
    name, 
    population, 
    area
FROM world
WHERE population > 250E6 
  XOR area > 3E6;

-- #9

-- scientific notation doesn't work on this for some reason...
SELECT 
    name, 
    ROUND(population/1000000, 2), 
    ROUND(gdp/1000000000, 2) 
FROM world
WHERE continent LIKE 'South America';

-- #10

SELECT 
    name, 
    ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1E12;

-- #11

SELECT 
    name, 
    capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- #12

SELECT 
    name, 
    capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
  AND name != capital;

-- #13

SELECT
    name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';