use robert;
show tables;
select * from user;
select * from order12;
drop table product;
select * from product;
create table user_(UID int primary key,Name varchar(50),Email_ID varchar(90),Password bigint);
create table Complaint(CID int primary key,Date date,UID int,foreign key(UID) references user_(UID),
Complaint_text varchar(200),Status varchar(30));
create table Road(RID int primary key,Road_Name varchar(80),Location varchar(100),Type varchar(50),
CID int,foreign key(CID) references Complaint(CID));
create table Comments(CMID int primary key,UID int,foreign key(UID) references user_(UID),
CID int,foreign key(CID) references Complaint(CID),Date_Posted date,Comment_Text varchar(200));
create table Image(Iid int primary key,URL varchar(255),CID int,foreign key(CID) references Complaint(CID),
CMID int,foreign key(CMID) references Comments(CMID));
desc user_;
desc Complaint;
desc Road;
desc Comments;
desc Image;
drop table comments,Image;
insert into user_ values(1,'Robert','robert@gmail.com',12345678),(2,'Oral','oral@gmail.com',12345678),
(3,'Shivaji','Shivaji@gmail.com',12345678),(4,'Raja','Raja@gmail.com',12345678),
(5,'Ashok','ashok@gmail.com',12345678),(6,'Rajendran','rajendran@gmail.com',12345678),
(7,'kirishna','kirishna@gmail.com',12345678),(8,'Alexander','alexander@gmail.com',12345678),
(9,'Shiva','shiva@gmail.com',12345678),(10,'Adhithya','adhithya@gmail.com',12345678);
insert into Complaint values(1,'2024-03-15',1,'damaged','cannot drive');
insert into Complaint values(2,'2024-03-16',2,'road cracked','can drive by side'),
(3,'2024-03-14',3,'road demolished by flood','cannot drive'),
(4,'2024-03-17',4,'damaged','cannot drive'),(5,'2024-03-18',5,'road cracked','can drive by side'),
(6,'2024-03-16',6,'road demolished by flood','cannot drive'),
(7,'2024-03-15',7,'many holes in road','can drive'),(8,'2024-03-17',8,'many holes in road','can drive'),
(9,'2024-03-14',9,'damaged','cannot drive'),(10,'2024-03-18',10,'road cracked','can drive by side');
insert into Road values(1,'hanuman road','mumbai','city',1),(2,'wagle estate','mumbai','highway',2),
(3,'majiwada','mumbai','highway',3),(4,'90 feet road','mumbai','street',4),
(5,'sv road','mumbai','highway',5),(6,'lbs road','mumbai','city',6),
(7,'andheri main road','mumbai','city',7),(8,'khardi road','mumbai','street',8),
(9,'village road','mumbai','street',9),(10,'shilphata','mumbai','highway',10);
insert into Comments values(1,1,1,'2024-03-15','danger to drive'),(2,2,2,'2024-03-16','not safe'),
(3,3,3,'2024-03-14','danger to drive'),(4,4,4,'2024-03-17','danger to drive'),
(5,5,5,'2024-03-18','not safe'),(6,6,6,'2024-03-16','danger to drive'),
(7,7,7,'2024-03-15','not safe'),(8,8,8,'2024-03-17','not safe'),
(9,9,9,'2024-03-14','danger to drive'),(10,10,10,'2024-03-18','not safe');
insert into Image values(1,'https://example.com/image.jpg1',1,1),(2,'https://example.com/image.jpg2',2,2),
(3,'https://example.com/image.jpg3',3,3),(4,'https://example.com/image.jpg4',4,4),
(5,'https://example.com/image.jpg5',5,5),(6,'https://example.com/image.jpg6',6,6),
(7,'https://example.com/image.jpg7',7,7),(8,'https://example.com/image.jpg8',8,8),
(9,'https://example.com/image.jpg9',9,9),(10,'https://example.com/image.jpg10',10,10);

select * from user_;
select * from Complaint;
select * from Road;
select * from Comments;
select * from Image;
select * from user_ inner join Complaint on user_.UID =  Complaint.CID;
select * from user_ natural join Complaint;
select * from user_ inner join Complaint on user_.uid = Complaint.uid
inner join Road on Complaint.CID = Road.CID
inner join Comments on Complaint.CID = Comments.CID
inner join Image on Comments.CMID = Image.CMID;
select user_.Name,user_.Email_ID,Complaint.Date,Complaint.Complaint_text,Road.Road_Name,
Road.Type,Image.URL from user_ inner join Complaint on user_.uid = Complaint.uid
inner join Road on Complaint.CID = Road.CID
inner join Comments on Complaint.CID = Comments.CID
inner join  Image on Comments.CMID = Image.CMID;






