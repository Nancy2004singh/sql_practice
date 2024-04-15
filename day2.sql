show databases;
select database();
use school;
show tables;

desc student1;

create table subject(
sub_code varchar(5) primary key,
sub_name varchar(15) not null
);

desc subject;

create table marks(
s_id int,
sub_code varchar(5),
marks int,
foreign key(s_id) references student1(s_id),
foreign key(sub_code) references subject(sub_code)
);
drop table marks;
show tables;

insert into student1 values 
(1,"pooja",36),
(2,"nancy",19);

insert into student1 (s_id,age) values
(3,21);

select * from student1; 

truncate table student1; -- DDL commands

insert into subject values
('M',"Maths"),
('E','English'),
('Sc','Science'),
('H',"Hindi");

select * from subject;

insert into marks values
(2,'M',90),
(1,'Sc',90),
(3,'E',80),
(2,'H',99);

select * from marks;

select sub_code,marks from marks;

select * from marks where marks>=90;
select * from marks where marks<>90;

create table emp(
e_id int primary key,
f_name varchar(30) not null,
l_name varchar(20) ,
age int check (age>=3),
phn int check (length(phn)=10),
city varchar(20) default "Delhi"
);

insert into emp values
(1,"Pooja","Singh",5,1234567890,"Vaishali");

insert into emp values
(2,"Poorvi","Singh",6,1234567891,"Vaishali");

insert into emp values
(3,"Sunny","Singh",7,1234563891,"Delhi"),
(4,"Munna","Singh",8,1234563891,"Bihar"),
(5,"Ravi","Singh",3,1234563891,"Bihar");

select * from emp;

select f_name,age,city from emp where city<>'Vaishali';

select * from emp where city='Bihar' and age>3;

select * from emp where city='Bihar' or age>3;

select * from emp where age >3 and age<7;
select * from emp where age between 3 and 7; -- both upper and lower limit are included
select * from emp where city in ("Vaishali","Delhi");