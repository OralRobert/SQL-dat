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


