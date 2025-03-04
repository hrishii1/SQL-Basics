-- FAQ's in Interview (Basics) 
use company; 
select * from employee; 
insert into employee(id,name,age,department,city,salary)
values (6,"Kumar",33,"Marketing","Chennai",44000),
(7,"Hari",32,"HR","Hubli",50000); 

-- UPDATE salary in HR department 
set sql_safe_updates = 1; 

update employee
set salary = 45000
where department = "HR"; 

-- DELETE with WHERE CONDITION
delete from employee
where id = 1 ;  

-- Total number of employee in the company in IT department , COUNT ()
select count(*) from employee 
where department = 'Marketing'; 

-- Employee name starting with "R" 
select * from employee where 
name LIKE 'r%' ; 

-- UNIQUE salary in the table 
select distinct salary  
from employee; 

-- First highest salary in the table 
Select max(salary) from employee; 

-- Second highest salary in the table using SUB-QUERIES 
select max(salary) from employee
where salary <> (select max(salary) from employee
); 

-- Find the n-th highest salary - Using ORDERBY and LIMIT 
select distinct salary
from employee 
order by salary desc
limit 3, 1; 

-- Top 2 HIGHEST Salary in table, HIGHEST (DESC) & LOWEST(ASC) 
select salary from employee
order by salary desc
limit 2; 

-- Calculate total salary and avg salary in each dept using AGGREGATE FUNCTION 
select department, sum(salary) as sum_sal , avg(salary) as avg_sal
from employee 
group by department; 

-- Department where NULL values
select * from employee
where department is null ; 

-- DUPLICATE ROWS in department 
select department, count(*) from employee
group by department 
having count(*) > 1; 

