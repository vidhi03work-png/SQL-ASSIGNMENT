use sql_ass;

#1
select count(user_id)as total_users from food_orders
group by user_id;

#2

select sum(amount)as total_amount from transactions
group by payment_method;

#3
select genre, sum(box_office_collection) as total_collection from movies
group by genre
having sum(box_office_collection)>10;


#4

select user_id, sum(duration) as total_duration from playlist
group by user_id
having sum(duration)>7200;
