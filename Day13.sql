SELECT 'Javatpoint'  RLIKE '^Java' AS 'Result';
/*
Dot (.): Represents any single character.
Asterisk (*): Matches zero or more occurrences of the preceding element.
Plus sign (+): Matches one or more occurrences of the preceding element.
Question mark (?): Matches zero or one occurrence of the preceding element.
Vertical bar (|): Acts as an OR operator to match either the pattern on the left or the pattern on the right.
Caret (^): Indicates the beginning of a line.
Dollar sign ($): Indicates the end of a line.
Square brackets ([ ]): Used to specify a set of characters to match.
Hyphen (-): Specifies a range of characters to match within square brackets.
Backslash (): Escapes special characters to be treated as literals.
*/

use comp;
show tables;
select * from customers;

select * from customers
where first_name rlike '[aeiou].$';

select * from customers
where first_name  rlike '^.{5}$';

select * from customers
where first_name  rlike '.{5}';

select * from customers
where first_name not rlike '.{5}';

select * from customers
where first_name rlike '^[a-n]';

create database flower;
use flower;
show tables;
select * from iris;
select * from country;




