DROP DATABASE IF EXISTS yelp_delivery_db;

CREATE DATABASE yelp_delivery_db 
	CHARACTER SET utf8mb4 
    COLLATE utf8mb4_unicode_ci;

USE yelp_delivery_db;

CREATE TABLE businesses (
business_id varchar(50),
name1 varchar(50),
address varchar(50),
state varchar(50),
zip_code varchar(50),
has_catering varchar(50),
stars float,businesses
review_count int,
primary key (business_id),
foreign key (zip_code) references median_income(zip_code)
);

CREATE TABLE median_income (
zip_code varchar(50),
median_income int,
primary key (zip_code)
);