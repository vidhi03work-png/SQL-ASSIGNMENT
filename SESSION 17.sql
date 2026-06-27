use sql_ass;

#1
SELECT *,
CASE
WHEN total_amount<300 THEN "SMALL"
WHEN total_amount BETWEEN 300 AND 999 THEN "MEDIUM"
else "LARGE"
END AS CLASSIFICATION
FROM FOODORDERS;

#2
SELECT *, CASE
when rating >=8 then "Blockbuster"
when rating between 5 and 7.9 then "Hit"
else "Average"
end as popularity
from movies;

#3
select *, case
when total_amount <500 then "budget"
when total_amount between 500 and 2000 then "standard"
else  "premium"
end as price_category
from flipkartorders;


#4
select *, case 
when duration_sec <180 then "short"
when duration_sec between 180 and 300 then "medium"
else "long"
end as duration_label
from songs;
