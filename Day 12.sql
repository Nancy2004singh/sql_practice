show databases;
use school;
show tables;

select * from student1;
CREATE TABLE student AS
SELECT *
FROM student1;

select * from student;
desc student;

insert into student values
(13,'Meghna',21),
(14,'Ravi',21),
(15,'Nancy',19);

-- Union of 2 same tables
select * from student
union
select * from student1;


-- Intersection of 2 same tables;
select * from student s
where exists
(select * from student1 s1 where s.s_id= s1.s_id);

-- conditions on union command
select * from student
where s_id>3
union
select * from student1
where s_id>8
order by age desc;

use google;
show tables;
select * from employee;

/* Case 
when condition then "" 
when condition then "" 
else "" 
end 'Alias_name'*/


select * ,
case
when salary<4000 then "low"
when salary between 4000 and 7000 then "medium"
else "High"
end Salary_Status
from employee
order by Salary ;

-- Calcualte bonus according to salary slab reference  from above question
