drop table customer;

create table if not exists customer
(
    cid char(5) not null primary key,
    cname varchar(20),
    age int(2),
    gen char(1),
    bamt int(5),
    loc varchar(15),
    Ino char(3),
    sid char(3)
);
insert into customer VALUES
('C0001','Anu',28,'F',32000,'Austrilia','I02','S02'),
('C0002','Bini',43,'G',60000,'India','I02','S01'),
('C0003','binal',35,'F',90000,'Nepal','I04','S09'),
('C0004','musk',23,'F',80000,'USA','I02','S08'),
('C0005','elon',45,'G',40000,'canada','I02','S08'),
('C0006','rudra',70,'G',50000,'japan','I02','S08'),
('C0007','veer',12,'G',60000,'USA','I02','S08'),
('C0008','arraw',67,'G',89000,'USA','I02','S08'),
('C0009','greaven',78,'F',60000,'USA','I02','S08'),
('C00010','jinal',42,'F',45000,'USA','I02','S08'),
('C00011','jinish',56,'G',20000,'USA','I02','S08'),
('C00012','priyank',65,'G',98000,'ENGLAND','I02','S08'),
('C00013','billy',63,'G',56000,'America','I02','S08'),
('C00014','jordan',89,'G',10000,'USA','I02','S08'),
('C00015','colard',90,'G',76000,'new york','I02','S08');
select * from customer;

--1. display all records of table customer
select * from customer;

--2 display name and age of customer
select cname, age;
from customer;

--3. display the records of female customers
select *
from customer
where gen 'F';

--4. display the name of customers whose age is less than 30
select cname
from customer
where age<30;

--5. display name and age of customer from Austrilia or India
select cname, age
from customer
where loc='Austrilia' or loc='India' ;

select cname, age
from customer
where loc in('Austrilia','India');

--6. display name of female customers whose bill amount is less than 40000
--7. display the names of customers whose age is between 30 to 40 an d bamt is less than 40000
--8. display the names of customers whose name starts with c
--9. display the names of customers whose name ends with k\
---10. display the names of customers whose name are 4 characters long

select cname
from customer
where gen'F' and bamt<40000;

select cname
from customer
where age between 30 and 40 and not bamt<40000; 