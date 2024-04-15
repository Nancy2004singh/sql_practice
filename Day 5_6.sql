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


use school;
show tables;
select * from student1;
insert into student1 
values
(4, 'mohit', 18),
(5, 'rohit', 17),
(6,'Mohit',18),
(7,'poorvi',16),
(8, 'prateek', 14),
(9, 'vishnu', 12),
(10, 'mahesh', 17),
(11, 'aparna', 16),
(12, 'jatin', 17),
(13, 'rohit', 13);

-- update the name of student to Meghna whose student id is 3
update student1 set st_name='Meghna' where s_id=3 ;
select * from student1;
-- delete the record of rohit whose student id is 13
delete from student1 where s_id=13;

-- count,min,max,avg,sum
-- count no of students whose age is greater than 18
select count(*) No_of_students from student1 where age>18;

select * from marks;
-- total marks of student whose id is 1
select sum(marks) Total from marks where s_id=1;

-- find the avg marks of math having subject code = M
select round(avg(marks),0) Avg_marks from marks where sub_code = 'M';

-- find the min and max marks of student whose id is 2
select min(marks) min_marks,
max(marks) max_marks,
sum(marks) as total_marks,
concat(round(avg(marks),0),'%') percentage
from marks 
where s_id=2;

-- group by 

select s_id,count(s_id) as Total_subject,
min(marks) min_marks,
max(marks) max_marks,
sum(marks) as total_marks,
concat(round(avg(marks),0),'%') percentage
from marks 
group by s_id;

--  display age wise no of student
select age,count(*) No_of_student from student1
group by age 
having No_of_student >1;

select * from emp;

use comp;
show tables;

select * from orders;
-- display product wise total sale, no of customers

select product, sum(total) total_sales,
count(*) No_of_customers
from orders
group by product
order by total_sales desc;

-- display products whose total sale is more than 500
select product, sum(total) total_sales
from orders
group by product
having total_sales >500
order by total_sales desc;

select product, sum(total) total_sales,
count(*) No_of_customers
from orders
where product<>'Paper'
group by product
order by total_sales desc;

