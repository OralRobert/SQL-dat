select abs(-11);
select abs(-1.11);
select ceil(12.34);
select ceil(12.80);
select ceil(12.0);
select ceil(12.01);
select round(12.1);
select round(12.4);
select round(12.49);
select round(12.5);
select truncate(12.11111111,3);
select truncate(12.11111111,6);
select mod(10,4);
select floor(10/4);
select pow(2,2);
select pow(10,2);
select sqrt(9);
select * from student_data;
select deparment, Name, round(marks) from student_data;
select deparment, Name, sqrt(marks)from student_data where id = 10;
select deparment, Name, sqrt(marks)from student_data;
select last_day('2024-02-14');
select curdate();
select now();
select sysdate();
select datediff('2024-08-17','2024-03-17');
select date_format(curdate(), '%d-%c-%y');
select date_format(curdate(), '%d-%c-%Y');
select date_format(curdate(), '%D-%M-%y');
select date_format(curdate(), '%d-%c-%y');
select date_format(curdate(), '%D-%m-%y');
select date_format(curdate(), '%D-%b-%y');
select date_format(curdate(), '%a-%D-%b-%y');
select date_format(curdate(), '%W-%D-%b-%Y');
select date_format(now(), '%W-%D-%b-%y');
select date_format(now(), '%W,%D-%b-%Y, %h:%i:%s');

create table abc(id int primary key,dob date not null,age int check(age>=18));
select * from abc;
insert into abc values(1,'2024-03-14',18);
select id,date_format(dob,'%W,%D-%M-%Y'),age from abc;
select id,date_format(dob,'%W,%D-%M-%Y')as DOB,age from abc;
select * from student_data;
update student_data set marks ='86.65' where id =(2);
alter table student_data modify marks double;
update student_data set marks ='93.65' where id =(4);
update student_data set marks ='58.45' where id =(6);
update student_data set marks ='73.25' where id =(9);
select id,deparment,Name,round(marks) from student_data;
select deparment,Name,truncate(marks,1) from student_data;
select id,deparment,Name,mod(marks,2) from student_data;
select id,deparment,Name,sqrt(paid_fees) from student_data;
select id,deparment,Name,sqrt(paid_fees) from student_data where id = (4);
