create database sales_data;
use sales_data

create table orders (
date date,
product_id int, 
city_id int,
orders int
);

select * from orders limit 1000;

select
	year(date) as year,
	month(date) as month,
	sum(orders) as total_orders,
	count(distinct orders) as order_volume
from
	orders
group by
	year(date), month(date)
order by
	year, month;