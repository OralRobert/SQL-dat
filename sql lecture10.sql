create database robert;
use robert;
create table grocery(item_no int,item_name varchar(20),mfd varchar(10),exp_date 
varchar(12),address varchar(20),city varchar(10));
desc grocery;
drop table grocery;
create table user(uid int,uname varchar(20),primary key(uid));
create table order1(oid int primary key,product_name varchar(20),uid int,foreign key(uid) 
references user(uid));
desc user;
desc order1;
insert into user values(1,'robert'),(2,'oral');
insert into user values(3,'saud'),(4,'joel');
insert into order1 values(101,'milk',3),(2,'bread',1),(3,'apple',2);
select * from order1;
select * from user;
insert into order1 values(102,'banana',null),(5,'ice-cream',null);
select user.uname, order1.product_name from order1 inner join user on user.uid = order1.uid;
select * from order1 inner join user on user.uid = order1.uid;
select * from order1 where uid is null;
select * from order1 where uid is not null;
create table product(pid int primary key, pname varchar(20));
create table order12(oide int primary key,uid int,pid int, foreign key(uid) 
references user(uid),foreign key(pid) references product(pid));
create table payment(pay_id int primary key,amt bigint,oide int,
foreign key(oide) references order12(oide));
insert into product values(1,'bike'),(2,'laptop'),(3,'mobile');
insert into order12 values(10,4,1),(20,1,2),(30,2,3);
select * from order12;
select * from user;
select * from product;
insert into payment values(1001,75000,10),(1002,50000,20);
select * from payment;
select user.uname,product.pname,payment.amt from user inner join order12 
on user.uid = order12.uid inner join product on 
product.pid = order12.pid inner join payment on payment.oide = order12.oide;
