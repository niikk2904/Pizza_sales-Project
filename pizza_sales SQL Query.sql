select * from pizza_sales

select sum(total_price) as Total_Revenue from pizza_sales

select sum(total_price)/count(distinct order_id) as Average_ordervalue from pizza_sales

select sum(quantity) as Total_pizza_sold from pizza_sales 

select count(distinct order_id) as Total_orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Average_pizza_perorder from pizza_sales

--Daily trends
select datename(dw,order_date) as order_days, count(distinct order_id) as total_orders
from pizza_sales
group by datename(dw,order_date)

--Hourly trends
select datepart(hour,order_time) as order_time, count(distinct order_id) as Total_orders
from pizza_sales
group by  datepart(hour,order_time)
order by  datepart(hour,order_time) 

--percentage os sales by pizza cate.
 
