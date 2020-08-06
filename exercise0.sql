
/*
#1,question want us to show what is the population of Germany 
from a World table database.
So we use WHERE clause to find when name = germany, the population 
are, which is 80716000.
*/

SELECT population FROM world
  WHERE name = 'Germany'

/*
#2,question want us to show the name and the population for 
'Sweden', 'Norway' and 'Denmark'. 
So we use IN, which allows us to check if an item is in a list.
in the end, we get Denmark	5634437, Norway	5124383, Sweden	9675885.
*/

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

/*
#3,question want us to show all of the countries that area are between
200,000 and 250,000. 
So we can use BETWEEN .. AND .., to get the result. 
we get
Belarus	207600
Ghana	238533
Guinea	245857
Guyana	214969
Laos	236800
Romania	238391
Uganda	241550
United Kingdom	242900

*/

SELECT name, area FROM world
  WHERE area BETWEEN  200000  AND  250000