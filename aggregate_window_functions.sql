use google;
show tables;
select * from sales;

select sum(sale) from sales;

select sales_employee,sum(sale)
from sales
group by 1;

select *,
sum(sale) over(partition by fiscal_year) as total_sale
from sales;

select *,
sum(sale) over() as total_sale
from sales;

select * from
(
select *,
sum(sale) over(partition by fiscal_year) as total_sale
from sales) x
where total_sale>400;

select *,
sum(sale) over(partition by fiscal_year) as total_sale
from sales
where sum(sale) over(partition by fiscal_year) >400;

select * from employee;
-- department wise salary distribution
select DEPT_NAME,emp_NAME,salary,
sum(salary) over(partition by DEPT_NAME) dep_sal
from employee;

select *, round((salary/dep_sal)*100 ,1)'salary(%)' from
(
select DEPT_NAME,emp_NAME,salary,
sum(salary) over(partition by DEPT_NAME) dep_sal
from employee
) x;

-- department wise Salary distribution in % 

select DEPT_NAME,
round((sum(salary) / (select sum(salary) from employee))*100,0) 'salary(%)'
from employee
group by 1;

select * ,
round((sum(salary) over(partition by DEPT_NAME)/ (select sum(salary) from employee))*100,0) dep_sal
from employee;

select *,
row_number() over() rnum
from employee;

select *,
row_number() over(partition by DEPT_NAME) rnum
from employee;

select 
row_number() over(partition by DEPT_NAME order by salary desc) rnum,
e.*
from employee e;

select
row_number() over(partition by DEPT_NAME) rnum,
e.*
from employee as e
order by DEPT_NAME,SALARY desc,emp_NAME;

select emp_NAME,DEPT_NAME,SALARY from 
(
select 
row_number() over(partition by DEPT_NAME order by salary desc) rnum,
e.*
from employee e
) x
where rnum=1;

-- Department wise minimum salary(use employee table)
-- Department wise maximum salary(use employee table)
-- Department wise average salary(use employee table)
-- Department wise no of employee(use employee table)
-- year wise employee name who has highest sales(use sales table)
  