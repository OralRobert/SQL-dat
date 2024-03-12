create table daily_expense(id int,date int primary key,debited int,credited int,product_name varchar(30)not 
null);
select * from daily_expense;
insert into daily_expense values(1,'10',0,0,'laptop');
alter table daily_expense modify column date date;
truncate daily_expense;
insert into daily_expense values(2,'11',0,0,'laptop');
alter table daily_expense add column month varchar(25) default 'march'after id;
alter table daily_expense drop month; 
alter table daily_expense modify column month varchar(25);
insert into daily_expense values(3,'feb','12',0,0,'laptop');
desc daily_expense;
show tables;
select * from student;
create table student_data (id int primary key auto_increment,Name varchar(30),deparment varchar(30),marks int,paid_fees int,Attendance int);
select * from student_data;
insert into student_data (id,Name,deparment,marks,paid_fees,Attendance) values(1,'oral',
'commerce',56,15000,70);
insert into student_data (Name,deparment,marks,paid_fees,Attendance) values('robert',
'commerce',65,16000,80);
insert into student_data (Name,deparment,marks,paid_fees,Attendance) values('oral',
'commerce',56,15000,70);
insert into student_data (Name,deparment,marks,paid_fees,Attendance) values('manoj','commerce',86,18000,83),('jenish','commerce',87,16256,68),('laxmi','commerce',59,73782,75),('joel','commerce',63,79456,62),('saud','commerce',43,63268,68),('nadar','commerce',69,87233,72),('tushar','commerce',60,63262,56);
select * from student_data where Name like 'o%';
select * from student_data where Name like '%r';
select * from student_data where Name like 'o%l';
select * from student_data where Name like '_r%';
select * from student_data where Name like '%o_';
select * from student_data limit 5;
select * from student_data limit 7;
select distinct paid_fees from student_data order by paid_fees desc limit 1;
select distinct paid_fees from student_data order by paid_fees desc limit 1,1; 
select distinct paid_fees from student_data order by paid_fees desc limit 2,1;
select distinct paid_fees from student_data order by paid_fees limit 1; 
select distinct paid_fees from student_data order by paid_fees desc limit 1; 
select distinct paid_fees from student_data order by paid_fees desc limit 1; 
select * from student_data where id in (4,7,10);
select * from student_data;
select distinct paid_fees from student_data order by paid_fees desc limit 1,1; 
select distinct paid_fees from student_data order by paid_fees limit 1;
select * from student_data where Name like 'o__l';
select * from student_data where paid_fees = (select distinct paid_fees from student_data order by paid_fees desc limit 1);
select * from student_data where paid_fees = (select distinct paid_fees from student_data order by paid_fees limit 1);
select distinct paid_fees from student_data order by paid_fees limit 2,1;
select distinct paid_fees from student_data order by paid_fees desc limit 1,1;
select * from student_data;
select * from student_data where name in ('oral','nadar');
select 10000*0.15;
update student_data set paid_fees = paid_fees+(paid_fees*0.15) where id in (1,2);
 













