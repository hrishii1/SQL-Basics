create database ecomm; 
use ecomm;

-- TABLE 1 
create table customer(id INT, name varchar(50)); 
insert into customer(id,name)
values(1,"Hri"),
(2,"Kumar"),
(3,"Rahul"),
(4,"Ram"),
(5,'Raj'); 

 -- TABLE 2 
 create table  orders(id INT, ordername varchar(30)); 
 insert into orders (id, ordername)
 values(2, "fruits"), 
 (3,"Ball"), 
 (4,"Utensils"); 
 use ecomm; 
-- INNER JOIN 
select customer.id,customer.name, orders.ordername from customer 
inner join orders 
on customer.id = orders.id; 

-- LEFT JOIN
select * from customer 
LEFT join orders
ON customer.id = orders.id; 

-- RIGHT JOIN
select * from customer
RIGHT JOIn orders
on customer.id = orders.id ; 
 
 -- FULL OUTER JOIN
 select * from customer 
 left join orders
 on customer.id = orders.id
 Union
 select * from customer 
 right join orders
 on customer.id = orders.id ; 
 
 -- CROSS JOIN
 select * from customer 
 cross join orders; 
 
 -- EXCLUSIVE JOINS
 -- LEFT EX JOIN (Shows null values in the left join) 
 select * from customer
 left join orders
 on customer.id = orders.id 
 where orders.id is null ; 
 
 -- RIGHT EX JOIN
 select * from customer
 right join orders
 on customer.id = orders.id 
 where customer.id is null ; 
 
 -- FULL EX JOIN
 select * from customer
 left join orders
 on customer.id = orders.id 
 where orders.id is null 
 union 
  select * from customer
 right join orders
 on customer.id = orders.id 
 where customer.id is null ;
 
 -- UNION Operator (REMOVES the DUPLICATE values from both tables and combine)  
 use ecomm; 
 select id from customer
 union 
 select id from orders; 
 
 -- UNION ALL (COMBINE Two or more queries but NOT REMOVE DUPLICATE) 
 select id from customer
 union all 
 select id from orders; 
 
 use ecomm; 
 -- STORE PROCEDURE 
 -- CREATE a procedure
 delimiter /
 create procedure getOrderdetails()
 begin 
 select * from orders; 
 end /
 delimiter ; 
 Call getOrderdetails(); 
 
 -- CREATE VIEW (gives limited access to the table) 
 use company; 
 create view employeeview as 
 select id, name, city from employee; 
 
-- USE THE VIEW 
select * from employeeview; 
 