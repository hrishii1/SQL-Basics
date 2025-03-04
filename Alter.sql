use xyz; 
select *from employee; 
alter table employee
add dob varchar(20) default 'np'; 

alter table employee
drop column dob; 

-- modify data type of column 
alter table employee
modify age varchar(20); 

-- change name of exisiting column name 
alter table employee
change age employee_age varchar(20); 

-- rename the column name 
alter table employee 
rename column employee_age to emp_age; 

-- rename table 
rename table employee to employees; 
select *from employees; 

-- create a new table 
create table salarydetails(
salary int, 
increement int); 

-- insert values in the table 
insert into salarydetails(salary, increement)
values
(150000, 10), (20000,20); 

select * from salarydetails; 

-- truncate the table command (deletes the data inside table without deleting the structure) 
truncate table salarydetails; 