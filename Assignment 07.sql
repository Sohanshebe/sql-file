
--------------------------Assignment 07------------>Date-11/09/2023

--1) write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars{($ salary)($24000)}. 
select concat('$',salary*1.15) from employees;

--2) write a SQL query to find those employees with hire date in the format like February 22, 1991.
--   Return employee ID, employee name, salary, hire date. 
select employee_id,first_name,salary,to_char(hire_date,'fm month dd,yyyy') from employees;

--3) write a SQL query to count the number of characters except the spaces for each employee name. 
--  Return employee name length. 
SELECT first_name||' '||last_name,LENGTH(replace(first_name||' '||last_name,' ','')) 
AS emp_name_length FROM employees;

--4) From the following table, write a SQL query to identify those employees whose salaries exceed 3000 
--  after receiving a 25% salary increase. Return complete information about the employees. 
select * from employees where (salary*1.25)>3000;

--5) write a SQL query to find out which employees joined in the month of January. 
--   Return complete information about the employees. 
select * from employees where extract(month from hire_date)=1;


--6) write a SQL query to find those employees who joined in any month, but the name of the month contain 
--   the character ‘A’ in second position. Return complete information about the employees. 
select * from employees where to_char(hire_date,'fm month dd,yyyy') like '__a%';

--7) write a SQL query to find those employees whose name ends with 'S' and six characters long. 
--   Return complete information about the employees.? 
select * from employees where first_name like '%s' and length(first_name)=6;

--8) write a SQL query to find those employees who joined in 90's. Return complete information about the employees. 
select * from employees where extract(year from hire_date)BETWEEN 1990 AND 1999;

--9) write a SQL query to calculate total purchase amount of all orders. Select sum(price) from purchase_table;
select sum(purch_amt) from orders;
