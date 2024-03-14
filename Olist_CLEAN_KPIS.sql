create database KPIs;
use KPIs;
use KPIs;
-- Data Cleaning
-- Update Products table
with eng as 
(select * from products join category_name_eng c on products_category_name=c.category_name)
UPDATE eng
SET category=c.category_name_eng
WHERE products.category=c.category_name;
-- Deleting the unwanted Columns
Delete category_name from eng;
-- Check Null records and replace
SELECT COALESCE(category,'N/A'),COALESCE(name_length,0),COALESCE(description_len,0),
COALESCE(photos_qty,0)
FROM products;

UPDATE products
SET category=COALESCE(category,'N/A'),
	name_length=COALESCE(name_length,0),
    description_len=COALESCE(description_len,0),
    photos_qty=COALESCE(photos_qty,0);
-- KPI 1 Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics
With daytype as
(select 
CASE 
WHEN
	DAYOFWEEK(STR_TO_DATE(order_purchase_timestamp,'%Y-%m-%d %H:%i')) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
END AS day_type,
payment_value 
FROM olist_orders_dataset as ood
JOIN olist_order_payments_dataset as opd ON opd.order_id=ood.order_id)
Select day_type,round(sum(payment_value)) as payments,
round(sum(payment_value)/(select sum(payment_value) from daytype)*100,2) as percent_total 
FROM daytype group by day_type;
-- KPI 2 Number of Orders with review score 5 and payment type as credit card.
SELECT oor.review_score,opd.payment_type,count(opd.payment_type) as no_orders 
FROM olist_order_reviews_dataset as oor 
JOIN olist_order_payments_dataset as opd on oor.order_id=opd.order_id 
WHERE review_score=5 and payment_type="credit_card";
-- KPI 3 • Average number of days taken for order_delivered_customer_date for pet_shop 
SELECT
	round(avg(CAST(SUBSTR(order_delivered_customer_date, 1, 10) as DATE) -
		CAST(SUBSTR(order_delivered_carrier_date, 1, 10) as DATE))) as avg_delivery_days
FROM 
	orders
CROSS JOIN 
	order_items
USING
	(order_id)
CROSS JOIN 
	products
USING
	(product_id)
WHERE
	product_category_name = 'pet_shop'
    AND order_delivered_customer_date is NOT NULL
	AND order_delivered_carrier_date is NOT NULL;

-- 4. Average price and payment values from customers of sao paulo city

SELECT round(avg(price)) as average_price,
		round(avg(payment_value)) as average_payment_value
FROM order_items
INNER JOIN order_payments using(order_id)
WHERE order_id IN (
		SELECT order_id
        FROM orders 
        WHERE customer_id IN (
			SELECT customer_id
            FROM customers
            WHERE customer_city = 'Sao Paulo')
);

-- 5. Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.

SELECT 
	round(avg(datediff(order_delivered_customer_date, order_purchase_timestamp))) as shipping_days,
	review_score
FROM 
	orders
RIGHT JOIN
	order_reviews
USING(order_id)
GROUP BY 
	review_score
ORDER BY
	review_score;

    	



 

