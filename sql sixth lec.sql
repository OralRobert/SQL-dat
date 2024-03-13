select 10000*0.15;
update student_data set paid_fees = paid_fees+(paid_fees*0.15) where id in (1,2);
select * from student_data where id not in (1,2);
delete from student_data where id in (1,10);
select * from student_data where id; 
create table table_1(id int primary key, name varchar(30)not null);
insert into table_1 values(1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');
create table table_2(id int primary key, name varchar(30)not null);
insert into table_2 values(1,'A'),(2,'B'),(3,'C'),(4,'DD'),(5,'EE');
select * from table_1;
select * from table_2;
insert into table_2 values(6,'F'),(7,'G');
insert into table_1 values(6,'FF');
select * from table_1 union select * from table_2;
select * from table_1 union all select *from table_2;
select * from table_1 intersect select * from table_2;
select * from table_1 except select * from table_2;
select * from student_data;
update student_data set deparment = 'science' where id = (7);
insert into student_data values(1,'shruti','arts',78,17162,55);
insert into student_data values(10,'Asin','science',98,17142,56);
update student_data set deparment = 'arts' where id = (8);
select * from student_data where id between 3 and 8;
select * from student_data where id>=3 and id<=8;
select *from table_1 union select * from table_2;
select * from table_1 union all select * from table_2;
select * from table_1 intersect select * from table_2;
select * from table_2 except select * from table_1;
select count(id),deparment from student_data group by deparment;
select * from student_data;
select avg(marks),deparment from student_data group by deparment;
select count(id),deparment from student_data group by deparment having avg(marks)>50;










 













