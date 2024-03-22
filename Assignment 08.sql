
--------------------------Assignment 05------------>Date-06/09/2023

--1) Write a query to list the number of jobs available in the employees table.? 
select count(DISTINCT job_id) from employees;

--2) Write a query to get the total salaries payable to employees. 
select count(salary), sum(salary)as totle_salary from employees;

--3) Write a query to get the maximum salary of an employee working as a Programmer. 
select max(salary)from employees where job_id='IT_PROG';

--4) Write a query to get the average salary and number of employees working the department 90 
select count(salary),avg(salary) from employees where department_id=90;

--5) Write a query to get the highest, lowest, sum, and average salary of all employees. 
select min(salary),max(salary),sum(salary),avg(salary) from employees;

--6) Write a query to get the difference between the highest and lowest salaries. 
select max(salary),min(salary), max(salary)-min(salary)as salary_difference from employees;

--7) Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. 
select min(salary),manager_id from employees group by manager_id;

--8) Write a query to get the average salary for each job ID excluding programmer. 
select job_id,avg(salary) from employees where job_id<>'IT_PROG' group by job_id;

--9) Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise),
--   for department ID 90 only. 
select job_id,sum(salary),max(salary),min(salary),avg(salary) from employees where department_id=90 group by job_id;

--10) Write a query to get the average salary for all departments employing more than 10 employees. 
select department_id,avg(salary) from employees group by department_id having count(*)>10;

--11) Write a SQL query to count the number of employees in each department. Return department code 
--   and number of employees. 
select department_id,count(*) from employees group by department_id;
