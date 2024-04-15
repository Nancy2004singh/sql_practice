-- DCL (Data control language)-Grant/Revoke
show databases;
use mysql;
show tables;
select * from user;

-- grant and revoke

create user 'pooja' identified by 'pooja123';
select * from user;
grant select,update on book_store.books to 'pooja';
flush privileges;
show grants for 'pooja';

revoke select on book_store.books from 'pooja';
drop user 'pooja';
flush privileges;
select user from user;
-- Between keyword
use comp;
select * from customers;

select * from customers where age between 10 and 25;

select * from customers where first_name between 'A' and 'k'