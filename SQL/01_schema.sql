create database if not exists sales_db;
use sales_db;

create table orders_clean (
    order_id int primary key,
    order_date date,
    customer_name varchar(100),
    email varchar(100),
    country varchar(30),
    product varchar(100),
    category varchar(50),
    unit_price decimal(10,2),
    quantity int,
    total decimal(10,2),
    payment_method varchar(30)
);

create table customer (
    customer_id int auto_increment primary key,
    customer_name varchar(100),
    email varchar(100),
    country varchar(30)
);