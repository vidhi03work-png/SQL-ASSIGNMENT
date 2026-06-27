use sql_ass;


#1
CREATE VIEW TopRatedRestaurants AS
SELECT restaurant_id,
       AVG(rating) AS avg_rating,
       COUNT(*) AS total_reviews
FROM zomato_reviews
GROUP BY restaurant_id
HAVING AVG(rating) > 4.0;

#2
CREATE OR REPLACE VIEW TopRatedRestaurants AS
SELECT r.name,
       r.city,
       AVG(z.rating) AS avg_rating,
       COUNT(*) AS total_reviews
FROM restaurants r
INNER JOIN zomato_reviews z
ON r.restaurant_id = z.restaurant_id
GROUP BY r.name, r.city
HAVING AVG(z.rating) > 4.0;

#3
UPDATE TopRatedRestaurants
SET avg_rating = 4.8
WHERE restaurant_name = 'Spice Garden';

#The view could not be updated because it uses aggregate functions and GROUP BY.


#4
CREATE VIEW DailyOrderSummary AS
SELECT order_date,
       COUNT(order_id) AS total_orders,
       SUM(total_amount) AS total_revenue
FROM SwiggyOrders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY order_date;

#5

#1-Use meaningful names – Example: FlipkartMonthlySales clearly indicates that the view contains monthly sales data.
#2-Select only required columns – Example: Include only product_name, sales_amount, and profit for a sales dashboard.
#3-Keep views simple and optimized – Example: Create separate views for customer analysis and sales analysis to improve performance.