use google;
select * from product;

select *,
percent_rank() over(order by price) 'rank%',
concat(round((percent_rank() over(order by price))*100,2),'%') as 'ranking(%)'
from product;

-- percent_rank = (row_rank -1)/(total_row -1)
select *,
rank() over(order by price) 'rank',
concat(round((percent_rank() over(order by price))*100,2),'%') as 'ranking'
from product;

select 2/27;

-- CUME_DIST = (Number of rows before or with the current row) / (Total number of rows)

select *,
round((cume_dist() over(order by price ))*100,2) as 'cum_dist(%)',
concat(round((percent_rank() over(order by price))*100,2),'%') as 'ranking'
from product;




create index product_id on product(product_name);

explain select * from product where product_name='iPhone 12';

explain select * from employee;

select @min:=min(price),@max:=max(price) from product;

select * from product 
where price=(select min(price) from product);

select * from product
where price > @min and price <@max;

select @min;