use robert;
show tables;
select * from emp;
select * from emp where salary = (select distinct salary from emp order by salary desc limit 1);
select * from emp where salary = (select distinct salary from emp order by salary limit 1);
select distinct salary from emp order by salary limit 1;
select distinct salary from emp order by salary desc limit 1;
select * from emp where name like 'y__h';
select * from emp where id in (4,2,1);
select * from emp where id not in (4,2,1);
select distinct salary from emp order by salary desc limit 2,2;
select * from emp limit 3;
select distinct salary from emp order by salary desc limit 2,1; 
select * from emp where salary = (select max(salary) from emp where salary);
select * from emp where salary = (select max(salary) from emp where salary < (select max(salary) from emp));
select * from emp as a left join emp as b on a.id = b.id where a.location is null;
select * from emp where location is null;
select * from student;
select * from  college;
select * from student left join college on student.cid = college.cid where student.cid is null;
select * from student right join college on student.cid = college.cid where student.cid is null;
select sname from student inner join college on student.cid = college.cid where college.cname = 'SIWS';
select * from student inner join college on student.cid = college.cid where college.cname = 'SIWS';
select distinct count(student.cid) from student inner join college on student.cid = college .cid;
create Table A(id int primary key,name varchar(30));
insert into A values(1,'a'),(2,'b'),(3,'c'),(4,'d');
create table B(id int primary key,name varchar(30));
insert into B values(1,'aa'),(2,'b'),(3,'cc'),(4,'d');
select * from A;
select * from B;
select * from A union select * from B;
select * from A union all select * from B;
select * from A intersect select * from B;
select * from A except select * from B;
select * from B except select * from A;
select * from emp limit 3;
select * from emp order by salary limit 2,2;
select * from emp limit 3,2;
select * from emp;
update emp set location = 'mumbai' where id = 5;
select * from emp where id between 1 and 4;
select * from emp where name like 'A%';
select * from emp where name like '%A';
select * from emp where name like 'A%d';
select * from emp where name like '_A%';
select * from emp where name like '%A_';
select * from emp where name like 's______a';
select * from emp where salary = (select distinct salary from emp order by salary desc limit 2,1);
select * from emp where name in ('jay','shraddha');
insert into emp values(7,'deepa','admin',3500,'hyderabad');
update emp set salary = salary + (salary * 0.15) where id in (7);
select * from emp where id between 3 and 7;
select * from emp where salary >=4000 and salary <=5000;
select count(id),department from emp group by department; 
select count(id)department from emp group by department;
select avg(id),department from student_data group by department;
select * from STUDENT_DATA;
select count(id),marks from student_data group by marks having avg(marks) > 60;
select count(id),marks from student_data group by marks;






