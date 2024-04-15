-- DDL: Create,drop,alter and truncate
show databases;
select database();
show tables;
use bank;
show tables;
use sys;
select database();
show tables;

create database school;
show databases;
select database();
use school;
show tables;
drop database school;

create table student(
s_id int Not null unique,
s_name varchar(30) default 'unnamed',
age int check (age>4) not null
);

show tables;
describe student1;
select * from student1;

drop table student;

alter table student modify age int;
alter table student add column address varchar(50);
alter table student rename column s_name to st_name;
alter table student drop column address;
alter table student rename to student1;
alter table student1 drop primary key;

select * from student1;