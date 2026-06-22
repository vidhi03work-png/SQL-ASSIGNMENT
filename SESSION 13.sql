use sql_ass;

#1
select order_id,user_id,order_amount,app_name,
sum(order_amount) over()as total_amount
 from orders;
 
 #2
 
 select order_id,user_id, order_amount,
 avg(order_amount)over(partition by user_id)as avg_amount
 from orders;
 
 #3
 
 select song_id,user_id, duration, 
 sum(duration) over(partition by user_id)as total_duration
 from playlist;
 
 
 #4
 select rating_id,user_id,movie_name,rating,
 avg(rating)over(partition by  movie_name) as avg_movie_rating,
 rating-avg(rating) over(partition by movie_name)as rating_diffrence
 from movieratings;
 
 