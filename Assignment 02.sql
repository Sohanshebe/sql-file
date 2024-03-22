
-------------------------Assignment 02---------------------------->Date-28/08/2023

--1)Create table employ_details (id int ,name varchar(30),age number(3),address varchar(20),salary float). 
create table employ_details(id int,name varchar(30),age number(3),address varchar(20),salary float);
 

--2)Insert the record as below in employ_details table. 
insert into employ_details(id,name,age,address,salary)values(7,'david',24,'indore',10000.00);

select * from employ_details;

--3)Update salary and age from employ_details whose id is 6. 
update employ_details set salary=5500, age=26 where id=6;

--4)Delete info of employ from employ_details whose name is ‘Hardik’. 
DELETE from employ_details where name='Hardik';

--5)Update address of employ to ‘pune’ whose existing address is ‘mumbai’ and ‘MP’. 
update employ_details set address='pune' where address='Mumbai' or address='MP';

--6)Give 1000 bonus to employees whose id is 4 and 7. 
UPDATE employ_details set salary=salary+1000 where id=4 or id=7;

--7)Display name ,age  and salary from employ_details . 
select name,age,salary from employ_details;

--8)Concate name ,age and address of employees and display with alias name Full_information . 
select name||age||address as Full_information from employ_details;

--9)Display name and salary of employees by using literals ‘ salary is ’. 
select name||' salary is '||salary from employ_details;

--10)Display distinct name from employ_details
SELECT DISTINCT name FROM employ_details;