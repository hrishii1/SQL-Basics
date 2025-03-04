create database xyz; 
use xyz; 

-- create a employee table 
create table employee(
id INT primary key, 
name varchar(50), 
age INT, 
department varchar(50), 
city varchar(40), 
salary Int) ; 

-- insert values in the table
insert into employee(id,name,age,department,city,salary)
values (1,'rahul',23,'IT','Mumbai',333),
(2,'xxx',33,'HR','Chennai',444),
(3,'yyy',44,'IT','Mum',667),
(4,'yayy',44,'Marketing','Mum',6367); 

-- see the data 

select * from employee;
-- update command salary change 
Update employee
set salary = 5000 
where department = 'HR'; 
set sql_safe_updates = 0 ; 

-- update command for name column 
update employee 
set name = 'Rahu'
where name = 'Rahul'; 

use xyz; 
SET SQL_SAFE_UPDATES = 0;
delete from employee
where department = "IT"; 

select * from employee where age=33; 
  

