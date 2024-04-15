use comp;
select * from customers;
-- update the age of customer whose id =6

update customers set age=32 where id=6;
select * from customers;

-- update country name(Delhi,Vaishali,LaxmiNagar,PreetVihar) by India

update customers set country="India"
 where country in ('Delhi','Vaishali','LaxmiNagar','PreetVihar');
select * from customers;
update customers set first_name="Nancy" where id=3;

-- delete the order details for order table whose customer id is 4
select * from orders;
delete from orders where customer_id=4;
-- Aggregate functions: max,min,count,sum,avg (single value)

-- min age of customer
select min(age) as 'min age' from customers;

-- max age of customer
select max(age) as 'max_age' from customers;

-- avg age of customer

select round(avg(age),0) avg_age from customers;

select round(23.54,1);

-- count no of rows in customers table
select count(age) No_of_rows from customers;

-- total sales of all products from orders table
select sum(total) 'Total Sales' from orders;