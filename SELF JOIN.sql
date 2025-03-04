use school; 

create table student(s_id int, name varchar(50), mentor_id int) ; 

insert into student(s_id, name,mentor_id)
values(1, "Ram", null), 
(2, "raghul", 1), 
(3, "riti", 1), 
(4, "priya", 3); 

select *from student; 

-- SELF JOIN
select s1.name as mentor_name , s2.name as student_name from student as s1
join student as s2 
where s1.s_id = s2.mentor_id; 

