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