USE SQL_ASS;

#1

select sum(amount) as totalamount from food_orders;

#2

SELECT user_id,
COUNT(song_id) AS total_songs
FROM spotify_playlists
GROUP BY user_id;

#3

SELECT ROUND(AVG(rating),1) AS avg_rating
FROM bookmyshow_reviews;

#4

SELECT user_id,
MIN(amount) AS min_amt,
MAX(amount) AS max_amt
FROM paytm_transactions
GROUP BY user_id;


#5

SELECT user_id,
COUNT(order_id) AS total_orders,
ROUND(AVG(total_price),2) AS avg_order_value,
MAX(total_price) AS highest_order_value
FROM myntra_orders
GROUP BY user_id;
