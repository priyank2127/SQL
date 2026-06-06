create table if not EXISTS DEPARTMENT(
    EMPLOYEE_ID TEXT,
    NAME TEXT,
    DEPARTMENT_ID TEXT,
    MANAGER_ID TEXT,
    SALARY REAL
);

INSERT INTO DEPARTMENT(EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES
('100', 'STEVEN', '90', '100', 24000),
('101', 'NEENA KOCHCAR', '90', '100', 17000),
('102', 'LEX DEHAAN', '90', '102', 9000),
('103', 'BRUCE LEE', '60', '103', 4800),
('104', 'DIANA WILLS', '60', '103', 25000),
('105', 'VALLI PATOR', '50', '100', 4200),
('1973', 'LUV HAMI', '60', '102', 5000),
('106', 'DAVID AUSTIN', '90', '100', 6000);

SELECT DEPARTMENT_ID AS "DEPARTMENT CODE",
COUNT(*) AS "NUMBER OF EMPLOYEES"
FROM DEPARTMENT
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, SUM(SALARY)
FROM DEPARTMENT
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID AS "DEPARTMENT CODE",
    COUNT(*) AS "NUMBER OF EMPLOYEES",
    SUM(SALARY) AS "TOTAL SALARY"
FROM DEPARTMENT
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID AS "DEPARTMENT CODE",
    SUM(SALARY) AS "TOTAL SALARY"
    FROM DEPARTMENT
WHERE MANAGER_ID='103'
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, COUNT(*) AS "NUMBER OF EMPLOYEES"
FROM DEPARTMENT
GROUP BY DEPARTMENT_ID
HAVING COUNT(*)>2;

create table if not exists item(
    ino char(3) not null primary key,
    Iname varchar(15),
    cost int(5),
    company varchar(10)
);
insert into item VALUES
('I01','mobile',20000,'samsung'),
('I02','laptop',50000,'dell'),
('I03','tv',40000,'sony'),
('I04','fridge',30000,'whirlpool'),
('I05','ac',35000,'lg');

/*
select count(*) ,gen
from customer
group by gen;
select count(*) ,loc
from customer
group by loc;
*/

create table if not exists salesman(
SID char(3) not null primary key,
Sname varchar(20),
Sage int(2),
Sgen char(1),
Sal int(5),
Sloc varchar(10),
Exp int(2)
);

insert into salesman VALUES
('S01','john',25,'M',30000,'new york',2),
('S02','michael',35,'M',40000,'new york',5),
('S03','susan',28,'F',35000,'chicago',3),
('S04','linda',32,'F',45000,'chicago',6),
('S05','robert',30,'M',32000,'los angeles',4);

select * from salesman;
select * from item;

select c.cname, s.Sname, loc as 'Location of Customer', sloc as 'Location of Salesman' on c.loc=s.sloc
from customer c, salesman s
where c.loc=s.sloc;

select c.cname 
from customer c, salesman s
where c.age < s.age and c.loc=s.sloc and gen='F' and loc='new york';

select sum(bamt)
from customer
where loc='new york' and gen='F';

select cname
from customer
where loc='new york' 
order by age desc;

select cname
from customer
where cname like 'a%' 
and bamt BETWEEN 30000 and 60000;

select cname
from customer
where cname like '%a%';

select cname
from customer
where iname like 'scooter' or iname like 'laptop';

select cname
from customer
where sloc like 'india' or sloc like 'new york' and cname like 'a%' and sid like 'S0%';