create database ranks ; 
use ranks; 

ALTER TABLE `rank` RENAME TO `rankss`;

-- RANK, DENSE_RANK, ROW_NUMBER 
select * ,
rank() over(order by sales desc) rnk, 
dense_rank() over (order by sales desc) dense_rnk, 
row_number() over (order by sales desc) row_num

from rankss; 

alter table  `partition` rename to `partitions` ; 

-- WITH PARTITION 
select * ,
rank() over(partition by department order by salary desc) rnk, 
dense_rank() over (partition by department order by salary desc) dense_rnk, 
row_number() over (partition by department order by salary desc) row_num
from partitions; 

select * from rankss; 
-- ROWS BETWEEN (MIN, MAX, SUM, AVG, COUNT)
select * , 
count(sales) over (order by `date` rows between 1 preceding and 1 following) total_sale_today_yest 
from rankss; 

-- RUNNING SUM : Adds all the preceding numbers from sales from the current row 
select *, 
sum(sales) over (order by date rows between unbounded preceding and current row) running_sum 
from rankss; 



