--1- write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909
update orders set city=null
where order_id in ('CA-2020-161389','US-2021-156909');

--2- write a query to find orders where city is null
select * from orders
where city=null;
select * from orders;
--3- write a query to get total profit, first order date and latest order date for each category
