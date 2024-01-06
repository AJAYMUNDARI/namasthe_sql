-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character--
select * from orders
where customer_name LIKE '_a_d%';

--2- write a sql to get all the orders placed in the month of dec 2020--
select * from orders
where order_date between '2020-12-1' and '2020-12-31';

--write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020--
select * from orders where  
ship_mode not in ('Standard Class','First Class')
and ship_date > '2020-11-30'

--4- write a query to get all the orders where customer name neither start with "A" and nor ends with "n"--
select * from orders where customer_name not like 'A%n';

--5- write a query to get all the orders where profit is negative--
select * from orders
where profit < 0;