USE SQL_ASS;

#1
SELECT I.INFLUENCER_NAME , B.BRAND_NAME FROM influencers I
LEFT JOIN BRANDS B
ON I.CITY=B.CITY
UNION
SELECT I.INFLUENCER_NAME , B.BRAND_NAME FROM influencers I
RIGHT JOIN BRANDS B
ON I.CITY=B.CITY;

#2
SELECT P1.PLAYLIST_NAME AS PLAYLIST , 
P2.PLAYLIST_NAME AS PARENTS_PLAYLIST
 FROM PLAYLISTS P1
LEFT JOIN playlists P2
ON P1.PARENT_PLAYLIST_ID =P2.ID;


#3
SELECT U.USERNAME, O.OFFER_TITLE FROM USERS U
CROSS JOIN OFFERS O;

#4
SELECT E1.NAME AS EMPLOYEE_NAME , E2.NAME AS MANAGER_NAME FROM EMPLOYEES E1
 LEFT JOIN EMPLOYEES E2
ON E1. ID= E2. MANAGER_ID;

#5
SELECT u1.username AS user1,
       u2.username AS user2,
       u1.city
FROM users u1
JOIN users u2
ON u1.city = u2.city
AND u1.user_id < u2.user_id;

# ChatGPT helped me improve the query by using a SELF JOIN on 
the users table and adding the condition u1.user_id < u2.user_id. 
This prevents a user from being matched with themselves and avoids
 duplicate pairs such as (Rahul, Priya) and (Priya, Rahul).