use google;
select 
row_number() over(partition by DEPT_NAME order by salary desc) rnum,
e.*
from employee e;

select 
rank() over(partition by DEPT_NAME order by salary desc) ranking,
e.*
from employee e;

-- department wise employee details having highest salary

select DEPT_NAME,emp_NAME,SALARY as 'max_sal'  from
(
select 
rank() over(partition by DEPT_NAME order by salary desc) ranking,
e.*
from employee e
) x
where ranking=1;

select 
dense_rank() over(partition by DEPT_NAME order by salary desc) ranking,
e.*
from employee e;

-- -- department wise employee details having 2nd highest salary

select DEPT_NAME,emp_NAME,SALARY '2nd_max_sal'
from
(
select 
dense_rank() over(partition by DEPT_NAME order by salary desc) ranking,
e.*
from employee e
) x
where ranking=2;

select 
row_number() over(partition by DEPT_NAME order by salary desc) rnum,
rank() over(partition by DEPT_NAME order by salary desc) ranking,
dense_rank() over(partition by DEPT_NAME order by salary desc) d_rank,
e.*
from employee e;

select * from sales;
-- year wise employee name who has highest sales(use sales table)
select * from
(
select *,
max(sale) over(partition by fiscal_year ) max_sale
from sales) x
where sale=max_sale;

select fiscal_year,sales_employee,sale max_sale from
(
select *,
dense_rank() over(partition by fiscal_year order by sale desc) ranking
from sales)x
where ranking=1;

-- try with the group by
select *,
lag(sale) over(partition by fiscal_year order by sale) prev_sale
from sales;
 
select *,
sale - lag(sale) over(partition by fiscal_year order by sale) prev_sale
from sales;

select *,
lead(sale) over(partition by fiscal_year order by sale) prev_sale
from sales;

select *,
lag(sale,2) over(partition by fiscal_year order by sale) prev_sale
from sales;

select *,
lead(sale,2) over(partition by fiscal_year order by sale) prev_sale
from sales;
