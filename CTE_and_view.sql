use google;
show tables;
-- Department wise minimum salary(use employee table)
desc employee;
select * ,
min(salary) over(partition by DEPT_NAME) min_sal
from employee;

-- Common table expression(CTE)

with dept_sal as (
select * ,
min(salary) over(partition by DEPT_NAME) min_sal
from employee)

select * from dept_sal 
where min_sal>3000;

with dept_sal as (
select * ,
min(salary) over(partition by DEPT_NAME) min_sal
from employee)
select * from dept_sal;

select e.* ,
lag(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as prev_emp_sal,
case when lag(salary,2,0) over(partition by DEPT_NAME order by emp_ID)=0 then 'It has zero value' else 'Successfully completed' end Prev_emp_status,
lead(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as next_emp_sal,
case when lead(salary,2,0) over(partition by DEPT_NAME order by emp_ID)=0 then 'It has zero value' else 'Successfully completed' end Next_emp_status
from employee e;

with emp_sal as (select * ,
lag(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as pre_emp_sal,
lead(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as next_emp_sal
from employee)
select *,
case when pre_emp_sal =0 then "Unsuccessful" else "Successful" end "status",
case when next_emp_sal =0 then "Unsuccessful" else "Successful" end "status1"
from emp_sal;

select * from max_min_price;

create view lead_lag as 
select * ,
lag(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as pre_emp_sal,
lead(salary,2,0) over(partition by DEPT_NAME order by emp_ID) as next_emp_sal
from employee;

select * from lead_lag
where pre_emp_sal<>0 and next_emp_sal<>0;