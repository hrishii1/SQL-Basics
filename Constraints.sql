create database college; 

use college; 
-- unique constraint

create table student (
phonenbr int unique
); 

insert into student (phonenbr)
values (123), (222), (345) ; 


-- not null contraints 
create table student1(
age int, 
rollno INT not null ) ; 

insert into student1 (age, rollno)
values (22, 1); 

-- check constraint 

create table student3( age Int check(age>18)); 

insert  into student3(age) 
values (19); 

-- default constraint 
create table student4(
schoolname varchar(50) default 'XYZ', 
age INT ) ; 

insert into student4(age)
values(19); 

-- primary key constraint (Unique value in the table) 
create table student5(age INT, 
rollno INT primary key); 

-- checking unique values 
insert into student5(age, rollno)
values (4, 23), 
(5, 33), (3, 23); 

-- not null values 
insert into student5(age, rollno)
values (4, 23), 
(5, 33), (3); 

-- foreign key constraint (will take the primary key from student5 table and match with the course table 
create table course(crsname varchar(50), 
rollno int, 
foreign key(rollno) references student5(rollno)
); 

-- creating new table for foreign key and primary key example 
create database school; 
use school; 
-- base table 
create table students(id INT primary key, 
name varchar(50)); 
-- child table 
create table courses(
cid int primary key, 
id INT, 
foreign key(id) references students(id)); 




 



