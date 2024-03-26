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
create table uniform(ucode int primary key,uname varchar(20),ucolor varchar(10));
create table cost(ucode int,foreign key(ucode) references uniform(ucode),size varchar(20),price int);
insert into uniform values(1,'shirt','white'),(2,'pant','grey'),(3,'tie','blue');
insert into cost values(1,'L',580),(1,'M',500),(2,'L',890),(2,'M',810);
select * from uniform;
select* from cost;
select uniform.ucode,uniform.uname,uniform.ucolor,cost.size,cost.price from uniform join cost on 
uniform.ucode = cost.ucode where uniform.ucode = cost.ucode;
select uniform.ucode,uniform.uname,uniform.ucolor,cost.size,cost.price from uniform join cost on 
uniform.ucode = cost.ucode;
select * from uniform inner join cost on uniform.ucode = cost.ucode;
select * from uniform natural join cost;
SELECT DAYNAME('1947-08-15') AS IndependenceDay;
select substring('Hii Robert',5,4);
SELECT MONTHNAME('2000-08-17') AS BirthMonth;
select upper('robert');
select concat("MYSQL", " is fun");
select replace('i love coding','coding','SQL');
select length('i love india');
select * from movie;
select * from movie order by movie_name asc;
select count(id),category from movie group by category having count(id)>1;
show tables;
select * from college;
alter table college add column name varchar(30) default  'oral';
select location, COUNT(*)from college GROUP BY location;
select * from showroom;
select name,max(price),min(price) from showroom group by name;
select id,count(*),sum(price * quantity) from showroom group by id;
show tables;
insert into showroom  values(6,null,null,null);





