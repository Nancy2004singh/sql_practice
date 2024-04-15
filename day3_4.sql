create database comp;
use comp;

CREATE TABLE Customers (
  id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10)
);

CREATE TABLE Orders (
  order_id INT primary KEY,
  product VARCHAR(40),
  total INT,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(id));
show tables;
desc Customers;
insert into Customers values
(1,'John','Doe',31,'USA'),
(2,'Robert','Luna',22,'USA'),
(3,'David','robinson',22,'UK'),
(4,'John','Reinhardt',22,'UK'),
(5,'Betty','Doe',28,'UAE');

select * from Customers;

insert into orders values
(1,'Paper',500,5),
(2,'Pens',10,2),
(3,'Markers',120,3),
(4,'Books',1000,1),
(5,'erasers',20,4),
(6,'Books',500,5);

select * from Orders;

show tables;

select * from customers;

-- Retrieve all entries from orders
select * from orders;
-- retrive the firstname and lastname from customers table
desc customers;
select first_name,last_name from customers;
-- retrive the product name whose total sale is greater and equal to 500 from orders table
desc orders;
select distinct product from orders where total>=500;
-- retrive all entries except product is paper
select * from orders where product<> 'Paper';
-- retrive full_name and country name from customers table
select concat(first_name," ",last_name) as Full_name ,country 
from customers;

-- retrieve all the customers name whose age is between 23 to 35 
select concat(first_name," ",last_name) full_name,age
from customers where age between 23 and 35;
-- Retrieve distinct product name  from orders table
select distinct product from orders;
insert into orders values
(7,'Paper',500,5),
(8,'Pens',10,2),
(9,'Markers',120,3),
(10,'Books',1000,1),
(11,'erasers',20,4),
(12,'Books',500,5);
-- Retrieve only 3 rows entry.
select * from orders limit 3;
-- Retrieve rows from 4 to 8
select * from orders limit 5 offset 3;
select * from orders limit 3,5;     -- limit off,lim
-- Sort the table orders by total sale in ascending order.
select * from orders order by total asc ;
select * from orders order by total ;
-- Sort the table orders by total sale in descending order.
select * from orders order by total desc;
-- retrive top 3 products name on the basis of sales 
select product as Top_3_product,total 
from orders 
order by total desc
limit 3;
-- retrive least 3 products name on the basis of sales 
select product as Top_3_product,total 
from orders 
order by total
limit 3;

select * from customers
order by age desc,first_name desc;

select distinct age from customers
order by age;

-- retrive youngest customer's detail 
-- retrive eldest customer's detail
-- retrive last 3 rows from customers table
-- retrive distinct country name from customers table
-- sort orders table by total(in desc) and product (in ascending)