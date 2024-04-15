use google;

select * from employee;
select *,
first_value(salary) over(partition by DEPT_NAME order by salary desc) as max_sal
from employee;

with max_salary as (select *,
first_value(salary) over(partition by DEPT_NAME order by salary desc) as max_sal
from employee)
select * from max_salary
where salary = max_sal;

select * ,
last_value(salary) over(partition by DEPT_NAME order by salary desc
range between unbounded preceding and unbounded following) as min_sal
from employee;

select count(*) from product;
select *,
    ntile(2) over (partition by product_category order by price desc) as buckets
    from product;
select *,
case when x.buckets =1 then "Expensive"
when x.buckets =2 then "Medium"
else "Cheapest"
end 'status'
 from
(select *,
    ntile(3) over (order by price desc) as buckets
    from product)x;
    
    
select *,
nth_value(product_name,2) over(partition by product_category order by price desc
rows between unbounded preceding and unbounded following) '2_highest'
from product;
    
select * from product;

-- product category wise arrange the product_name according to price
-- product category wise product name having min price
-- product category wise product name havong max price
-- product category wise total sale
-- product category wise display divide price into 2 group(group1 and group2)
