create database company; 

use company; 

-- new table for employee details
create table employee(
id int primary key, 
name varchar(50), 
age int, 
department varchar(30), 
city varchar(10), 
salary int); 

-- insert values in the table 
insert into employee(id, name, age, department, city, salary)
values (1, "Raghul", 22, "HR", "Mumbai", 20000), 
(2, "Raghu", 23, "IT", "Chennai", 30000), 
(3, "XXXX", 25, "HR", "Mumbai", 24455), 
(4, "LLLL", 22, "Marketing", "Bangalore", 400000), 
(5, "MMMM", 22, "HR", "Mumbai", 20444); 

select * from employee; 

-- see distinct values from columns 
select distinct department from employee; 

-- combination of columns 
select distinct age, department from employee; 

 --- AND operaton 
  select * from employee 
  where age >20 and department ='IT'; 
  
  -- OR operator 
  select * from employee
  where department ='HR' OR age >20; 
  
  -- NOT Operator 
    select * from employee
  where department  NOT IN ("IT", "HR");  
  
  -- IN Operator 
  select * from employee
  where department  IN ("IT", "HR");  
  
  -- IS NULL or NULL operators 
  select * from employee
  where department is null ; 
  
  -- Like and wildcard operator 
  select * from employee
  where name like 'R____'; 
  
  -- between operator 
  select * from employee 
  where salary between 20000 and 25000; 
  
  -- limit clause 
  select * from employee
  limit 2; 
  
  -- orderby clause 
  select age, salary from employee
  order by salary asc , age desc ;
  
  -- GROUP BY clause 
  select department , sum(salary) from employee as avssal
  group by department ; 
  
  -- HAVING clause 
  select department , avg(salary)  as avgsalary 
  from employee
  group by department 
  having avgsalary>30000; 
  
  -- Aggregate functions (count, min, max, avg, sum) NO VARCHAR OR STRING 
  select avg(salary) from employee;  

-- Practice questions (CLAUSE) 
select city, count(name) as no_of_emp
from employee
group by city ; 

-- max salary in each city in desc order 
select city , max(salary) as max_salary
from employee
group by city
order by max_salary desc; 

 