USE SQL_ASS;

#1
WITH TOPARTISTS AS(
SELECT *FROM SPOTIFYARTISTS 
ORDER BY FOLLOWERS DESC
LIMIT 3)
SELECT *FROM TOPARTISTS;


#2
WITH MONTHLYTOTAL AS
( SELECT MONTH(ORDER_DATE) AS MONTH_NUM,
	    SUM(TOTAL_AMOUNT)AS TOTAL_SALES
        FROM FLIPKARTORDERS
        WHERE YEAR(ORDER_DATE)=2023
        GROUP BY MONTH(ORDER_DATE)
)
SELECT *FROM MONTHLYTOTAL
ORDER by TOTAL_SALES DESC
LIMIT 1;


#3
WITH RECURSIVE Next7Days AS (
    SELECT CURDATE() AS day_date
	UNION ALL
	SELECT DATE_ADD(day_date, INTERVAL 1 DAY)
    FROM Next7Days
    WHERE day_date < DATE_ADD(CURDATE(), INTERVAL 6 DAY)
)
SELECT * FROM Next7Days;


#4
WITH CITYAVGRATING AS
( SELECT CITY, AVG(RATING)AS AVG_RATING
FROM ZOMATORESTAURANTS
GROUP BY CITY
)
SELECT Z.ID,Z.NAME,Z.CITY,Z.RATING FROM zomatorestaurants Z
JOIN CITYAVGRATING C
ON Z.CITY=C.CITY
WHERE C.AVG_RATING>4.0;


#5
WITH TeamRuns AS (
    SELECT team,
           SUM(runs) AS total_runs
    FROM IPLMatches
    WHERE match_year = 2023
    GROUP BY team
)

SELECT team,
       total_runs
FROM TeamRuns
WHERE total_runs > 2000;

#ChatGPT helped me create a CTE named TeamRuns to first calculate the total runs scored by each team in 2023. 
Then, I filtered the results to display only teams with more than 2000 runs. 
This made the query easier to read and understand.







