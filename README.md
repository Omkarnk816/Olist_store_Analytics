# Olist_store_Analytics
## Introduction
Olist is a Brazilian e-commerce platform that connects small and medium-sized businesses to customers across Brazil. The platform operates as a marketplace, where merchants can list their products and services and customers can browse and purchase them online.The dataset is designed to help analysts and researchers better understand the e-commerce landscape in Brazil and identify opportunities for growth and optimization. To help Olist gain better insights into its e-commerce platform and optimize available opportunities for growth,we will perfom some KPI's and answer some business questions,thereby providing Insights and recommendations.
## Data Description
The features allow viewing orders from multiple dimensions: from order status, price, payment, and freight performance to customer location, product attributes, and finally reviews written by customers.
For this challenge, I used MySQL to access the dataset, clean and perform Data Analysis using BI tool Tableau.

Below is the outline of the challenge

* Explore Dataset and perform Data Validation
* Data Cleaning
* Perform Exploratory Data Analysis
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
In cleaning the Data, I used MySQL 

1) Converting/Updating our category column to the English translation from the translation table.There are records in the category column that require us to replace with English-translated versions of the Portuguese strings     from the category_name_translatn table, but after confirming the distinct records from the translation table.
   <p align="center">
  <img src="https://github.com/Omkarnk816/Olist_store_Analytics/assets/162085882/3a3ba96b-f917-478b-a1f6-086ab2d45d69" />
</p>
2) Deleting the unwanted attributes/columns for the optimized analysing and reducing the time.

3) Check for Null records and replace them with correct strings or numeric values.After checking for null values, there are 610 records with null values in the category, name_length, descriptn_len, and photos_qty columns of    the products table.I used the coalesce function to replace the null values in the category with N/A, and 0 with null values in the name_length, descriptn_len, and photos_qty columns.


  
