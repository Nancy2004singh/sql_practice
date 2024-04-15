use google;
show tables;
select * from airpassenger1;
desc airpassengers;
select date(now());
select time(now());
select current_timestamp;
CREATE TABLE admission_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    s_name VARCHAR(255),
    age INT,
    email VARCHAR(255),
    registration_date  DATE 
) auto_increment=1;
INSERT INTO admission_table (s_name, age, email, registration_date) VALUES
('John Doe', 25, 'john.doe@email.com', current_date());


select * from admission_table;


-- Retrieve all records registered after a specific date:
select * from admission_table
where registration_date > '2023-06-30';

select year(registration_date) from admission_table;

-- Retrive all the records of current year

select * from admission_table
where year(registration_date)=year(current_date());

-- Count the number of registrants per year:
select year(registration_date),count(*) No_of_admissions
from admission_table
group by 1;

-- monthly report of admission inyear 2022

select month(registration_date) as 'month',count(*) No_of_admission
from admission_table
where year(registration_date)=2022
group by month(registration_date);

select monthname(registration_date) as 'month',count(*) No_of_admission
from admission_table
where year(registration_date)=2022
group by monthname(registration_date);

select month(registration_date) as 'month',registration_date
from admission_table
where year(registration_date)=2022;

-- quaterly report of admission in year 2022
select quarter(registration_date) as 'Quarter',count(*) No_of_admission
from admission_table
where year(registration_date)=2022
group by quarter(registration_date);

SELECT
    EXTRACT(quarter FROM registration_date) AS registration_month,
    COUNT(*) AS registrations_count
FROM
    admission_table
where year(registration_date)=2022
GROUP BY
    registration_month;

-- Calculate the difference in days between registration dates:
select datediff('2024-01-15','2024-02-20');
-- Retrieve records where registration date is within the last 60 days:
select * from admission_table
where registration_date>=current_date() - interval 60 day;

select now(),curdate(),curtime();
select date(now()),time(now());
SELECT EXTRACT(YEAR FROM NOW()) AS year;
SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%i:%s') AS formatted_date;
-- Adds a specified time interval to a date.
SELECT DATE_ADD(NOW(), INTERVAL 1 day) AS future_date;
SELECT DATE_ADD(NOW(), INTERVAL 1 month) AS future_date;
SELECT DATE_ADD(NOW(), INTERVAL 1 week) AS future_date;
-- Subtracts a specified time interval from a date.
SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH) AS past_date;

-- Returns the difference in a specified unit between two dates or times.
SELECT TIMESTAMPDIFF(MINUTE, '2024-01-07 12:00:00', NOW()) AS minutes_difference;
SELECT TIMESTAMPDIFF(hour, '2024-01-07 12:00:00', NOW()) AS hours_difference;
SELECT TIMESTAMPDIFF(day, '2024-01-07 12:00:00', NOW()) AS days_difference;
