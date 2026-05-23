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
('C0002','Bini',43,'F',90000,'India','I02','S01');

select * from customer;