
select * from orders;
select * from returns$;
--1) write a query to get region wise count of return orders
select region, count(distinct o.order_id) as no_of_rerturn_orders
from orders o
join returns$ r on o.order_id=r.[Order Id]
group by region;

--2) write a query to get category wise sales of orders that were not returned
select category, count(distinct o.order_id) as no_of_not_return_orders
from orders o
join returns$ r on o.order_id != r.[Order Id]
group by category; 

--3) write a query to print sub categories where we have all 3 kinds of returns (others,bad quality,wrong items)
select sub_category
from orders o
join returns$ r on o.order_id = r.[Order Id]
group by sub_category
having count(distinct [Return Reason])>2;

select o.sub_category
from orders o
inner join returns$ r on o.order_id=r.[Order Id]
group by o.sub_category
having count(distinct r.[Return Reason])=3;

--4) write a query to find cities where not even a single order was returned.
select city 
from orders o
join returns$ r on o.order_id != r.[Order Id]
group by city;

select city
from orders o
left join returns$ r on o.order_id=r.[Order Id]
group by city
having count(r.[Order Id])=0

--5) write a query to find top 3 subcategories by sales of returned orders in east region
select top 3 sub_category , sum(sales) as returned_order_sale
from orders o
join returns$ r on o.order_id = r.[Order Id]
where region in ('East')
group by sub_category
order by returned_order_sale desc;

--