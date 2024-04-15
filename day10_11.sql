create database company;
use company;

CREATE TABLE department (
department_id int PRIMARY KEY,
department_name VARCHAR(100)
);

create table manager(
manager_id int AUTO_INCREMENT primary key,
Manager_name varchar(20) not null)AUTO_INCREMENT=101;
 
CREATE TABLE employee (
employee_id int AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100),
department_id int,
job_role VARCHAR(100),
manager_id int ,
foreign key(department_id) references department(department_id),
foreign key(manager_id) references manager(manager_id)
)AUTO_INCREMENT= 1001;

INSERT INTO department VALUES 
(1, 'Executive'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Development'),
(5, 'Support'),
(6, 'Research');

INSERT INTO manager(Manager_name) VALUES 
('Pooja'),
('Sanjana'),
('Twinkle'),
('Mohit'),
('Rohit'),
('Sujeet');

INSERT INTO manager(Manager_name) VALUES 
('Sumit'),
('Vivek');

INSERT INTO employee (full_name, department_id, job_role, manager_id)
VALUES ('John Smith', 1, 'CEO', 101),
('Sarah Goodes', 1, 'CFO', 101),
('Wayne Ablett', 1, 'CIO', 101),
('Michelle Carey', 2, 'HR Manager', 102),
('Chris Matthews', 3, 'Sales Manager ', 103),
('Andrew Judd', 4, 'Development Manager', 106),
('Danielle McLeod', 5, 'Support Manager', 104),
('Matthew Swan', 2, 'HR Representative', 105),
('Stephanie Richardson', 2, 'Salesperson', 105),
('Tony Grant', 3, 'Salesperson', 103),
('Jenna Lockett', 4, 'Front-End Developer', 106),
('Michael Dunstall', 4, 'Back-End Developer', 106),
('Jane Voss', 4, 'Back-End Developer', 106),
('Anthony Hird', 5, 'Support', 104),
('Natalie Rocca', 5, 'Support', 104);

select * from department;
select * from manager;
select * from employee;
-- inner join (common entries in both tables)
--  emp_name,department_name,job_role 

select full_name ,department_name,job_role
from employee e,department d
where e.department_id = d.department_id;
--        OR
select full_name ,department_name,job_role
from employee e join department d
on e.department_id = d.department_id;

--    OR
select full_name ,department_name,job_role
from employee e inner join department d
USING (department_id);

-- department name wise no of employee
select department_name,count(*) No_of_employees
from employee inner join department 
USING (department_id)
group by department_name;

-- details of department having maximum employee
select department_name,count(*) No_of_employees
from employee inner join department 
USING (department_id)
group by department_name
order by No_of_employees desc
limit 1;

-- left join(returns all rows of left side table)
-- right join(returns all rows of right side table)
--  emp_name,manger_name,job_role 
desc employee;
select full_name,Manager_name,job_role
from manager left join employee
using(manager_id); 

select full_name,Manager_name,job_role
from manager left join employee
using(manager_id)
where full_name is null; 

select full_name,Manager_name,job_role
from manager left join employee
using(manager_id)
where full_name is not null;

select full_name,Manager_name,job_role
from manager right join employee
using(manager_id); 

-- -- which manager has least no of employees
select Manager_name, sum(if(full_name is null,0,1)) No_of_employee
from employee e right join manager m 
using(manager_id )
group by manager_name
having No_of_employee=0;

-- manager wise no of employees
-- Name of managers having more tha 2 employees

-- use comp database for further questions
-- Fullname ,product_name and price details
-- Customer wise total price details
-- Customer details who had maximum purchase
show tables;
select * from employee;
select * from department;
select count(*) from department;


-- cross join
select * from employee
cross join department;

-- self join
-- emp_name, role, manager_name fro employee1 table
select * from employee1;

select e1.Full_name,e1.Role,e2.Full_name
from employee1 e1
join employee1 e2
on e1.manager_id=e2.id;

select * from employee;
-- emp_name,department_name,job_role,manager_name

select full_name,department_name,manager_name,job_role
from employee e
join department d
using(department_id)
join manager m
using(manager_id);

select full_name,department_name,manager_name,job_role
from employee e,department d,manager m
where e.department_id= d.department_id and e.manager_id=m.manager_id;


create database google;
use google;
create table employee (
emp_ID int,
 emp_NAME varchar(50),
 DEPT_NAME varchar(50),
 SALARY int);
 
desc employee;
insert into employee values
(101, 'Mohan', 'Admin', 4000),
(102, 'Rajkumar', 'HR', 3000),
(103, 'Akbar', 'IT', 4000),
(104, 'Dorvin', 'Finance', 6500),
(105, 'Rohit', 'HR', 3000),
(106, 'Rajesh',  'Finance', 5000),
(107, 'Preet', 'HR', 7000),
(108, 'Maryam', 'Admin', 4000),
(109, 'Sanjay', 'IT', 6500),
(110, 'Vasudha', 'IT', 7000),
(111, 'Melinda', 'IT', 8000),
(112, 'Komal', 'IT', 10000),
(113, 'Gautham', 'Admin', 2000),
(114, 'Manisha', 'HR', 3000),
(115, 'Chandni', 'IT', 4500),
(116, 'Satya', 'Finance', 6500),
(117, 'Adarsh', 'HR', 3500),
(118, 'Tejaswi', 'Finance', 5500),
(119, 'Cory', 'HR', 8000),
(120, 'Monica', 'Admin', 5000),
(121, 'Rosalin', 'IT', 6000),
(122, 'Ibrahim', 'IT', 8000),
(123, 'Vikram', 'IT', 8000),
(124,'Dheeraj','IT',11000);
select * from employee;

CREATE TABLE sales(
    sales_employee VARCHAR(50) NOT NULL,
    fiscal_year INT NOT NULL,
    sale DECIMAL(14,2) NOT NULL,
    PRIMARY KEY(sales_employee,fiscal_year)
);

INSERT INTO sales(sales_employee,fiscal_year,sale)
VALUES('Bob',2016,100),
      ('Bob',2017,150),
      ('Bob',2018,200),
      ('Alice',2016,150),
      ('Alice',2017,100),
      ('Alice',2018,200),
       ('John',2016,200),
      ('John',2017,150),
      ('John',2018,250);

