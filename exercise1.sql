/*
#1,question want us to find the countries name that start with 'Y'
SO, we can use WHERE name LIKE 'Y%' to find it.(The % is a 
wild-card it can match any characters).
*/

SELECT name FROM world
  WHERE name LIKE 'Y%'

/*
#2,question want us to find the countries name that end with 'y'
So, we use WHERE name LIKE '%t' to find it. 
*/

SELECT name FROM world
  WHERE name LIKE '%t'

/*
#3,question want us to find the countries name that contains x.
So, we use WHERE name LIKE '%x%' to find it.
*/

SELECT name FROM world
  WHERE name LIKE '%x%'

/*
#4,question want us to find the countries name that contains x.
So, we use WHERE name LIKE '%land' to find it.
*/

SELECT name FROM world
  WHERE name LIKE '%land'

/*
#5,question want us to find the countries name that have 
a C and ends with ia.
So, we use WHERE name LIKE '%land' to find it.
*/

SELECT name FROM world
  WHERE name LIKE 'C%ia'

/*
#6,question want us to find the countries name that have a double o
So, we use WHERE name LIKE '%oo%' to find it.
*/

SELECT name FROM world
  WHERE name LIKE '%oo%'

/*
#7,question want us to find the countries name that has three a 
So, we use WHERE name LIKE '%a%a%a%'to find it.
*/

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'


/*
#8,question want us to find the countries name that that have "t" as 
the second character. we can use underscore as a single character wildcard.
So, we use WHERE name LIKE '_t%'to find it.
*/

SELECT name FROM world
 WHERE name LIKE '_t%'

/*
#9,question want us to find the countries name that have two "o" characters 
separated by two others. 
So, we use WHERE name LIKE  '%o__o%' to find it.
*/

SELECT name FROM world
 WHERE name LIKE '%o__o%'

/*
#10,question want us to find the countries name that have exactly four characters.
So, we use WHERE name LIKE '____' to find it.
*/

SELECT name FROM world
 WHERE name LIKE '____'

/*
#11,question want us to find the countries name that where the name is the capital city.
So, we use WHERE name = capital to find it.
*/

SELECT name
  FROM world
 WHERE name = capital;


/*
#12,question want us to find the countries name that where the capital 
is the country plus "City".
So, we use WHERE capital = concat(name, ' City') to find it.
*/

SELECT name
  FROM world
 WHERE capital = concat(name, ' City');

/*
#13,question want us to find the countries name that  the capital and the name 
where the capital includes the name of the country.
So, we use  WHERE capital LIKE concat('%', name, '%') to find it.
*/

SELECT capital,name 
 FROM world 
 WHERE capital LIKE concat('%', name, '%');

/*
#14,question want us to find the countries name that  the capital and the name where 
the capital is an extension of name of the country.
So, we use  WHERE capital LIKE concat('%', name, '%') AND capital > name to find it.
*/

SELECT name, capital 
 FROM world 
 WHERE capital LIKE concat('%', name, '%') AND capital > name;


/*
#15,question want us to find the countries name that  the name and the extension 
where the capital is an extension of name of the country.
So, we use  WHERE capital LIKE concat('%', name, '%') AND capital > name to find it.
*/

SELECT name, REPLACE(capital, name, '') 
 FROM world 
 WHERE capital LIKE concat('%', name, '%') AND capital > name;

