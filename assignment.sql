-- use google and company database
use google;
show tables;
select * from admission_table;

--- Q-1. Write an SQL query to fetch “FIRST_NAME” from employee table using the alias name as <employee_NAME>.--(use company database)

--- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from departments table.--- (use comapany database)

--- Q-3. Write an SQL query to show the last 5 record from employee table.---(use comapany database)

--- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from employee table--- (use comapany database)

---  Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Sarah’ from employee table.--- (use comapany database)

--- Q-6. Write an SQL query to print the name of employee having the highest salary in each department.---(use google database)

--- Q-7. Write an SQL query to print the FIRST_NAME from employee table after removing white spaces from the right side.-- (use comapany database)

--- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from departments table and prints its length. (use comapany database)

--- Q-9. Write an SQL query to fetch nth max salaries from a table..---(use google database)

--- Q-10. Write an SQL query to print the FIRST_NAME from employee table after replacing ‘a’ with ‘A’.---(use comapany database)

--- Q-12. Write an SQL query to fetch the names of employee who earn the highest salary.--(use google database)

--- Q-13. Write an SQL query to print details of employee excluding first names, “Akbar” and “Rohit” from employee table. -- (use google database)

--- Q-14. Write an SQL query to print details of the employee whose FIRST_NAME ends with ‘l’ and contains six alphabets.---(use google database)

--- Q-15. Write a query to validate Email of student-- (use google database,admission_table)

--- Q-16. Write an SQL query to print details of the student who have registered after Feb’2023. (use google database,admission_table)

--- Q-17. Write an SQL query to fetch duplicate records having matching data in some fields of a table.-- 

--- Q-18. How to remove duplicate rows from Employee table.---

--- Q-19. Write an SQL query to show only odd rows from a table.---

--- Q-20. Write an SQL query to clone a new table from another table.--
create table clone_emp like employee;
insert into clone_emp select * from employee;
show tables;
select * from clone_emp;

--- Q-21. Write an SQL query to fetch intersecting records of two tables.--- 

--- Q-21. Write an SQL query to fetch union records of two tables.--- 

--- Q-22. Write an SQL query to show records from one table that another table does not have.---

--- Q-23.  Write an SQL query to show the top n (say 10) records of a table.-- 

--- Q-24. Write an SQL query to determine the nth (say n=5) highest salary from a table.--

--- Q-25. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

--- Q-26. Write an SQL query to fetch the list of employee with the same salary.---(use google database)




