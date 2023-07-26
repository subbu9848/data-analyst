SELECT * FROM sql_hr.employees;



SELECT salary
FROM sql_hr.employees
order by salary desc;

with dilip as(
select first_name, salary, rank() over(order by salary desc) as ranking
from sql_hr.employees),
dilip2 as (select avg(salary) from dilip)

select * from dilip2;


Error Code: 1222. The used SELECT statements have a different number of columns
