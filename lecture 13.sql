use robert;
select * from user;
select * from user where uname  = "joel";
create table showroom(id int primary key,name varchar(20),price int,quantity int);
insert into showroom values(1,'TV',45000,3),(2,'bike',85000,2),(3,'washing_machine',40000,4),
(4,'fan',18000,10),(5,'car',95000,2);
select * from showroom;
select name,price from showroom;
select name,price,(price * 0.2)from showroom;
create table student_data(id int primary key,department varchar(20),
student_name varchar(20),marks float,paid_fees bigint,attendance int);
insert into student_data values(1,'mechanical','spiderman',53.1,34000,60),(2,'civil','hulk',73.9,85000,55),
(3,'commerce','superman',90,50000,100);
select * from student_data;
select id, department, student_name,marks,
case
when marks>=40 and marks<=60 then 'third class'
when marks>60 and marks<=80 then 'second class'
when marks>=80 and marks<=100 then 'first class'
end as result from student_data order by marks desc;

create table college(cid int primary key,cname varchar(20), location varchar(30));
create table student(sid int primary key,sname varchar(20), sage int, scity varchar(30),cid int,
foreign key(cid) references college(cid));
insert into college values(1,'SIWS','wadala'),(2,'knowledge_centre','wadala'),(3,'kelkar','nahur');
insert into student values(1,'Robert',19,'mumbai',2),(2,'oral',22,'mumbai',3),(3,'joel',23,'mumbai',1),
(4,'pooja',21,'mumbai',2),(5,'netra',24,'mumbai',3),(6,'abhishek',20,'mumbai',1),(7,'zambrai',19,'mumbai',2),
(8,'nadar',25,'mumbai',3),(9,'ram',22,'mumbai',null),(10,'kumar',21,'mumbai',null);
insert into college values(4,'SNDT','Sion');
select * from student;
select * from college; 
select * from college inner join student on student.cid = college.cid;
select student.sname,student.scity as student_address, college.cname as college_name,
college.location as college_address from college inner join student on student.cid = college.cid;
select * from student natural join college;
select student.sname,student.scity as student_address, college.cname as college_name,
college.location as college_address from college inner join student on college.cid = student.cid;
select * from college left join student on student.cid = college.cid;
select * from college right join student on student.cid = college.cid;
select * from college left join student on student.cid = college.cid union 
select * from college right join student on student.cid = college.cid;
create table employee(eid int primary key, ename varchar(30),designation varchar(30),manager varchar(30));
insert into employee values(1,'robert','ceo',null),(2,'saud','dev',4),(3,'rakesh','dev',4),
(4,'oral','dev manager',1),(5,'kirish','HR',1);
select * from employee;
select e.ename as employee_name,e.designation, m.ename as manager_name,m.designation from
employee as e inner join employee as m on e.eid = m.manager;
select e.ename,e.designation,m.ename,m.designation from employee as e inner join employee as m on
e.eid = m.manager;
select e.ename,e.designation,m.ename,m.designation from employee e,employee m where e.eid = m.manager;
select floor(datediff('2024-03-21','1996-08-17')/365) as age;
select e.ename, m.ename from employee as e,employee as m;

select student.sname, college.cname from student cross join college;
select student.sname, college.cname from student,college;
select * from student;
select sid from student where sage between 22 and 25;
select * from student where sid >any (select sid from student where sage between 22 and 25);