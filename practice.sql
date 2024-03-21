use robert;
select * from showroom;
select * from showroom group by id,price having price<60000;
select * from showroom where quantity between 3 and 10;
select * from student_data;
select id,department,student_name,marks from student_data where marks > 70;
SET SQL_SAFE_UPDATES = 0;
update student_data set marks =( marks + 0.02) where student_name = 'spiderman';
show tables;
select * from user;
alter table user add column percentage int default 75;
alter table user drop column percentage;
update user set percentage = percentage * 0.02 where uname = 'oral';
select id,department,student_name,marks,(marks+0.02) from student_data where student_name = 'hulk';
delete from student_data where student_name = 'superman';
select * from emp;
create table emp(id int primary key,name varchar(20),department varchar(30),salary int,location varchar(20));
insert into emp values(1,'jay','HR',5000,'chennai'),(2,'yash','management',7000,'pune'),
(3,'Anand','Training',6000,'chennai'),(4,'Ruhi','sales',4000,'delhi'),(5,'Pratik','Admin',3000,null);
select * from emp where name like 'p%';
select name,salary from emp where salary between 3000 and 5000;
select * from emp order by salary desc;
select id,name as ename,department as dept,salary,location from emp limit 2;
select * from emp where name like '_a%';
select id, name from emp where location in('chennai','mumbai','pune');
select name from emp where location is null;
select * from emp order by salary;
create table movie(id int primary key,movie_name varchar(30),category varchar(30),realease_date date,
production_cost int,business_cost bigint);
insert into movie values(001,'hindi movie','musical','2018-04-23',124500,130000),
(002,'tamil movie','action','2016-05-17',112000,118000),(003,'english movie','horror','2017-08-06',245000,360000),
(004,'bengali movie','adventure','2017-01-04',72000,100000),(005,'telugu movie','action',null,100000,null),
(006,'punjab movie','comedy',null,30500,null);
select * from movie;
select id,movie_name,(production_cost + business_cost) as total_earning from movie;
select distinct category from movie;
select id,movie_name,(production_cost - business_cost) as net_profit from movie;


