
--------------------------Assignment 04------------>Date-04/09/2023

--1)Display the short description of employees table.? 
DESCRIBE employees;

--2)Display unique salary values from employee tables.? 
select DISTINCT salary from employees;

--3)Display unique last name values from employees table.? 
select DISTINCT last_name from employees;

--4)Display records of employees whose department_id ‘90’? 
select * from employees where department_id=90;

--5)Display records of employees where salary less than 5000 and their job_id is ‘SA_MAN’. 
select * from employees where job_id='SA_MAN' and salary<5000;

--6)Display records of employees where hire_date is in a range of ‘01/06/2003’ to ‘01/06/2006’?. 
select * from employees where hire_date between '01/06/2003' and '01/06/2006';

--7)Find records of employees where job_id’s are ‘SA_MAN SA_REP and IT_PROG’? 
select * from employees where job_id in ('SA_MAN','SA_REP','IT_PROG');

--8)Find records of employees where department_id not in ’90, 60, 50’?.  
select * from employees where department_id<>90 and department_id<>60 and department_id<>50;

--9)Sort departments table according to department_name column in descending form? 
select * from departments order by department_name desc;