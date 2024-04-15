create database book_store;
use book_store;

create table category(
id int primary key,
C_name varchar(20));

alter table category modify column C_name varchar(20) Not null;
desc category;

create table Authors(
id int primary key,
A_name varchar(20));

alter table Authors modify column A_name varchar(20) not null;

create table Books(
id int auto_increment primary key,
b_name varchar(20) not null,
price int ,
Cat_id int,
Aut_id int,
foreign key(Cat_id) references category(id),
foreign key(Aut_id) references Authors(id)
) auto_increment=100;

ALTER TABLE table_name 
MODIFY column_name INT AUTO_INCREMENT, 
AUTO_INCREMENT = 100;


INSERT INTO category 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H'),
(6, 'Cat-I');

INSERT INTO Authors
VALUES (1, 'Author-A'),
(2, 'Author-B'),
(3, 'Author-C'),
(10, 'Author-D'),
(12, 'Author-E');
desc Books;
INSERT INTO Books 
(b_name,price,Cat_id,Aut_id)
VALUES ( 'Book-A', 100, 1, 2),
( 'Book-B', 200, 2, 2),
( 'Book-C', 150, 3, 2),
( 'Book-D', 100, 3,1),
( 'Book-E', 200, 3,1),
( 'Book-F', 150, 4,1),
( 'Book-G', 100, 7,10),
( 'Book-H', 200, 8,12),
('Book-I', 150, 7,3);

select * from Books ;
select * from category;
select b.id, b_name, C_name,price from Books as b , category c
where b.Cat_id = c.Cat_id;
select * from Authors;
select b.id, b_name, a_name,price from Books b , Authors a
where b.aut_id = a.id;

select b.id, b_name, C_name,a_name,price 
from Books b , category c, Authors a
where b.Cat_id = c.Cat_id and b.aut_id=a.id;

select a.id, A_name , b_name,price from Authors a , books b
where a.id = b.aut_id;
-- Single line comment
/* multiline comment */
desc authors;
desc books;
-- Author wise no of books(Author_id,author_name,no of books)

select a.id Author_id,A_name Author_Name,count(*) No_of_books
from authors a , books b
where b.Aut_id = a.id
group by  a.id;

-- Author wise no of books(Author_id,author_name,no of books), where no of book>1
select a.id Author_id,A_name Author_Name,count(*) No_of_books
from authors a , books b
where b.Aut_id = a.id
group by  a.id
having No_of_books>1;