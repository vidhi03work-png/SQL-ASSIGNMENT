USE SQL_ASS;

#1
SELECT order_id, user_id, order_date, order_amount,
ROW_NUMBER() 
OVER(PARTITION BY USER_ID 
ORDER BY ORDER_DATE DESC)AS ROW_NUM FROM ORDERS;

#2
select song_id,artist_name,streams ,
rank() over(partition by artist_name order by streams desc)as song_rank from songs;

#3
select movie_id,genre,rating,
dense_rank() over(partition by genre order by rating desc)as movie_rating
from movies;

#4
with rankedinfluencers as(
select id, platform,followers,
row_number() over(partition by platform order by followers desc)as row_num
from influencers)
select id, platform,followers,row_num from rankedinfluencers
where row_num <=3;
