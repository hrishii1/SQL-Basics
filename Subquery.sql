use company; 
-- Min age 
select min(age) as min_age from employee; 
-- all emp age>min age
select emp.name, emp.age 
from employee emp,(select min(age) as min_age from employee) as min_age
where emp.age>min_age; 

-- Avg age 
select avg(age) from employee; 
-- age avg age
select name,  age,(select avg(age) from employee) as avg_age
from employee;

-- Find N-th highest salary (4th highest salary)
-- First find distinct salary in DESC order 
select distinct salary 
from employee
order by salary desc
Limit 2,1; 
 