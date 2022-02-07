use Bussiness_Analyst
select * from
worker

--Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select
E_ID,
FIRST_NAME,
LEFT(FIRST_NAME,3) as F_Name

from 
worker

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select 
E_ID,
FIRST_NAME,
CHARINDEX('a', FIRST_NAME) as position
from
worker

---Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

select 
E_ID,
MAX(salary) 
from worker
group by 
E_ID
