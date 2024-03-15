# Olist_store_Analytics
## Introduction
Olist is a Brazilian e-commerce platform that connects small and medium-sized businesses to customers across Brazil. The platform operates as a marketplace, where merchants can list their products and services and customers can browse and purchase them online.The dataset is designed to help analysts and researchers better understand the e-commerce landscape in Brazil and identify opportunities for growth and optimization. To help Olist gain better insights into its e-commerce platform and optimize available opportunities for growth,we will perfom some KPI's and answer some business questions,thereby providing Insights and recommendations.
## Data Description
The features allow viewing orders from multiple dimensions: from order status, price, payment, and freight performance to customer location, product attributes, and finally reviews written by customers.
For this challenge, I used MySQL to access the dataset, clean and perform Data Analysis using BI tool Tableau.

Below is the outline of the challenge

* Explore Dataset and perform Data Validation
* Data Cleaning
* Perform KPI's Data Analysis
* Share Insights and Make recommendations
## Data Schema
![image](https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/5593773b-cfee-43e0-84e1-4d375edaef18)
###  DATA EXPLORATION & VALIDATION
I explored the 9 different tables with Excel and from this process, I discovered the dataset had the following quality issues:

* Null & Empty values
* Unwanted special characters
* Irrelevant columns
* Errors in spelling
### DATA CLEANING 
In cleaning the Data, I used MySQL [link](https://github.com/Omkarnk816/Olist_store_Analytics/blob/main/Olist_CLEAN_KPIS.sql)

* Converting/Updating our category column to the English translation from the translation table.There are records in the category column that require us to replace with English-translated versions of the Portuguese strings     from the category_name_translatn table, but after confirming the distinct records from the translation table.
   <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/3a3ba96b-f917-478b-a1f6-086ab2d45d69" />
</p>

* Deleting the unwanted attributes/columns for the optimized analysing and reducing the time.
* Check for Null records and replace them with correct strings or numeric valuesAfter checking for null values, there are 610 records with null values in the category, name_length, descriptn_len, and photos_qty columns of the products table.I used the coalesce function to replace the null values in the category with N/A, and 0 with null values in the name_length, descriptn_len, and photos_qty columns.

   <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/a3b24a80-60a9-4aa6-bc0f-e377d16a7fe9" />
</p>

### Perform KPI's Data Analysis

1) Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics

  <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/d7b71bc7-7252-4f29-9f39-0eb587be5bf2" />
</p>

  <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/6487de7d-f049-438b-9753-ff0119f28d17" />
</p>

2) Number of Orders with review score 5 and payment type as credit card.

  <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/ab5f9741-3d42-45d1-a566-9e996e83f804" />
</p>

 <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/40e4a7f7-0b86-4d89-9dd8-c8034a00acf7" />
</p>

3) Average number of days taken for order_delivered_customer_date for pet_shop

 <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/03c020ae-3aed-4f68-9979-599b5b9de1ce" />
</p>

4) Average price and payment values from customers of sao paulo city

 <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/0f4b998f-299f-4fdd-8053-c9994952d970" />
</p>
 
 <p align="center">
  <img src=https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/37c16323-8afe-4d16-bd1c-3548f43b7f3a" />
</p>

5) Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.

 <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/e53fed1e-98fb-4c00-82b7-7a28105abf0b" />
</p>

 <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/93e9772e-8d31-4a8c-b8cf-ab9e5d47d4b2" />
</p>

## Insights
KPI 1: Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics
The analysis of payment statistics based on weekday vs. weekend provides an understanding of the buying behavior of customers. This KPI answers questions like, which day of the week has the highest sales? How many customers prefer to pay through online modes? The analysis of this KPI can help Olist to improve their weekend sales and plan promotions accordingly.

KPI 2: Number of Orders with review score 5 and payment type as credit card
This KPI analyses the number of orders with a review score of 5 and payment type as credit card. This helps in understanding customer satisfaction levels and payment preferences. Olist can use this information to identify satisfied customers and encourage them to make repeat purchases.

KPI 3: Average number of days taken for order_delivered_customer_date for pet_shop
This KPI analyzes the average number of days taken for order_delivered_customer_date for pet_shop. It helps Olist in identifying areas where they can improve their delivery time and maintain customer satisfaction.

KPI 4: Average price and payment values from customers of sao paulo city
The analysis of average price and payment values from customers of Sao Paulo city helps in understanding the spending patterns of customers in this region. It also helps Olist in identifying high-value customers and creating targeted marketing campaigns.

KPI 5: Relationship between shipping days (order_delivered_customer_date — order_purchase_timestamp) Vs review scores
This KPI analyzes the relationship between shipping days and review scores. It helps in understanding the impact of delivery time on customer satisfaction levels. Olist can use this information to optimize their logistics and improve their delivery time.

## Conclusion

The Olist Store Analysis project provides valuable insights into customer behavior and payment statistics. The analysis of these KPIs helps Olist in identifying areas of improvement and creating targeted marketing campaigns. As a data analyst, I have used Excel,MySQL and Tableau to clean and manipulate the dataset and create meaningful visualizations. This project serves as a great example of how data analysis can help businesses make informed decisions.Dashboard[link](https://github.com/Omkarnk816/Olist_store_Analytics/blob/main/Olist%20E-Commerce.twbx)

![Olist_Dashboard](https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/37fd2d51-e74f-46a9-9dd9-8a7be0913eed)















  


  
