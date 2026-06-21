use sql_ass;

#1
select*from orders;
select*from users;

#2
select u.username , o.product from users u
inner join orders o
on u.user_id=o.user_id ;

#3
select u.username, o.product from users u
left join orders o
on u.user_id = o.user_id;


#4
select u.username, o.product from users u
right join orders o
on u.user_id=o.user_id;


#5
select u.username, cs.segment_name , sum(o. order_amount) as total_order_amount from users u
join customersegments cs
on u.segment_id = cs.segment_id
join orders o
on u.user_id= o.user_id
group by u.username, cs.segment_name;
