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
-- retrive the firstname and lastname from customers table
-- retrive the product name whose total sale is greater and equal to 500 from orders table
-- retrive all entries except product is paper
-- retrive full_name and country name from customers table
-- retrieve all the customers name whose age is between 23 to 35 
