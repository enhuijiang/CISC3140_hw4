/*
#1,question want us to show that Nobel prizes winners for 1950.
*/

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

/*
#2,question want us to show that who won the 1962 prize for Literature.
*/

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

/*
#3,question want us to show that the year and subject that won 'Albert Einstein' his prize.
*/

SELECT yr,subject
 FROM nobel
 WHERE winner='Albert Einstein'

/*
#4,question want us to show that the name of the 'Peace' winners since the year 2000, including 2000.
*/

SELECT winner 
 FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000

/*
#5,question want us to show that Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
*/

SELECT yr,subject,winner
 FROM nobel
 WHERE subject='Literature' AND yr  BETWEEN 1980 AND 1989

/*
#6,question want us to show that all details of the presidential winners:
Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
*/

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter','Barack Obama')

/*
#7,question want us to show that the winners with first name John
*/

SELECT winner
 FROM nobel
 WHERE winner LIKE 'John%'

/*
#8,question want us to show that  the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
*/

SELECT yr,subject,winner
 FROM nobel
 WHERE subject='Physics' AND yr=1980 OR subject='Chemistry' AND yr=1984

/*
#9,question want us to show that  the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
*/

SELECT yr,subject,winner
 FROM nobel
 WHERE yr=1980 AND subject<>'Chemistry' AND subject<>'Medicine' 

/*
#10,question want us to show that year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
*/

SELECT yr,subject,winner
 FROM nobel
 WHERE yr<1910 AND subject='Medicine' OR yr>=2004  AND subject='Literature' 

/*
#11,question want us to Find all details of the prize won by PETER GRÜNBERG 
*/

SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';

/*
#12,question want us to Find all details of the prize won by EUGENE O'NEILL
*/

SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

/*
#13,question want us to show that the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
*/

Select winner, yr, subject 
  FROM nobel 
  WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner;

/*
#14,question want us to show that the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
*/

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY  
 CASE WHEN subject IN ('Physics','Chemistry') THEN 1 ELSE 0 END,
  subject,winner