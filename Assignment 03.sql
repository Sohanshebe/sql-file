
-----------------------Assignment 03----------------------> Date-01/09/2023

--1) Concate Street_address,postalcode,city with ‘,’ from location table. 
select street_address||' , '||postal_code||' , '||city from locations;

--2)Select first_name, last_name  and dep_id from employees and concate f_name and last_name with space. 
--Use below literal. Ex steven king ‘has a department id is’ 
select first_name||' '||last_name,department_id from employees;

--3)My first name is  steven ?and I am from ‘IT_PROG’ department. 
select * from employees where first_name='Steven' or job_id='IT_PROG';

--4)Show structure of departments table. Select all data from table. 
SELECT * FROM departments;
DESCRIBE departments;

--5)Show table data like (job_title ) ’salary is ‘ max_salary  
--ex: President salary is 40000 
select first_name,salary as max_salary from employees order by salary DESC;

--6) location id, street address, postal code, city  give alias name  full address and concate all coloumn with ‘,’ 
select location_id||' , '||street_address||' , '||postal_code||' , '||city as full_address from locations;

--7)Eliminate duplicate rows of job_id. 
select DISTINCT job_id from employees;

--8)Display the name of all employees whose DEPARTMENT ID is 60, 110,80,90 with STATEMENT 
--{Department id of (NAME) is (DEPARTMENT ID)} 
select * from employees where department_id in (60,110,80,90);

--9)Write a query for increment of salary by 5000 of EMPLOYEE ID 170,175,180. 
update employees set salary=salary+5000 where employee_id in (170,175,180);
select * from employees where employee_id in (170,175,180);

--10)Display STATEMENT: {(FULL NAME) is working in (job_id) with (employee_id).} 
select first_name||' '||last_name||' is working in '||job_id||' with '||employee_id from employees;

--11)Write a query for Employees, who are working as PU CLEARK, ST CLEARK, SH CLEARK Having salary between 5000 and 15000 
select * from employees where job_id in ('PU_CLERK','ST_CLERK','SH_CLERK') AND salary between 5000 and 15000;

--12)Display employees FULL NAME who NOT having {department Id = 80} 
select first_name||' '||last_name,department_id from employees where department_id<>80;

--13)Write a query to decrement the salary by 3000 of Employee id 201,204,205. 
update employees set salary=salary-3000 where employee_id in (201,204,205);
select * from employees where employee_id in(201,204,205);

--14)Write a query for employees whose salary are greater than or equal to 1000 and job id having 'CLEARK' at the end. 
select * from employees where job_id like '%CLERK' and salary>=5000;
select * from employees;

--15)Write a query to get the employee id, first_name and last_name for those employees do not earn any commission. 
select employee_id, first_name,last_name from employees where commission_pct is null;

--16)Display full name,job id, salary of employee from IT_PROG and SA_REP department whose salary
--   between 2000 and 15000 and display their annual salary. 
select first_name||' '||last_name,job_id,salary from employees where job_id in('IT_PROG','SA_REP') 
AND salary BETWEEN 2000 and 15000;

--17)Display full name of employee and print the list in descending whose email id start with J . 
select first_name||' '||last_name from employees where email like 'J%' order by email desc;

--18)Display the name of employee who hired in march and their job is SA_REP and manager id is 146,147,148. 
select * from employees where job_id='SA_REP' AND manager_id in(146,147,148) and hire_date like '%__3__%';

--19)write a query to display employee name and hire date ,give any alias .(Use the literal—myself(emp_name), I hired on(hire_date). 
SELECT first_name AS "myself(first_name)", hire_date AS "I hired on(hire_date)" FROM employees;

--20)display all employee whose MANAGER_ID is greater than 103 with having last digit of PHONE_NUMBER is 6 
select * from employees where manager_id>103 and phone_number like '%6';

--21)Display all records who have john, 'Alexander'any where in name column. 
select * from employees where first_name like 'John' or first_name like 'Alexander';