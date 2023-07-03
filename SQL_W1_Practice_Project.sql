-- Q.1 Create a table city with columns named person_id, city_name, Locality, and
-- Country. Also, mention the character or digit length for all the declared fields

create table city
(
person_id int(10) unsigned not null,
city_name varchar(25),
Locality varchar(26),
Country varchar(20)
);

-- Q.2 Display the table created

show tables;
describe city;


-- Q.3 Start populating the table as:
-- person_idcity_name Locality Country
-- 1 Raipur Shankar Nagar India
-- 2 Raipur Sales Tax Colony India
-- 3 Bilaspur Nehru Nagar India
-- 4 Bilaspur Civil Lines India

insert into city values
(1,'Raipur','Shankar Nagar','India'),
(2,'Raipur','Sales Tax Colony','India'),
(3,'Bilaspur','Nehru Nagar','India'),
(4,'Bilaspur','Civil Lines','India');
select * from city;

-- Q.4 Add a column for contact with 10 digits length

alter table city add contact int(10);
select * from city;

-- Q.5 Change the column name for "city_name" to "District"

alter table city rename column city_name to District ;
-- or
alter table city change city_name District varchar(25);
select * from city;

-- Q.6 Drop the table city and check whether it is dropped or not

drop table city;
show tables;
-- or 
describe city;

-- Q.7 Update the location for person_id (4) to "Warehouse Road"

update city set Locality='Warehouse Road' where person_id=4;
select * from city;

-- Q.8 Using the HR_emp dataset answer the following:
use hr_emp;

-- a) Write a query to view the structure of the table
show tables;
describe employees;

-- b) Display the details of the employees working in the company
select * from employees;

-- c) Display employee id, first name, last name, and hiring date of employees in the
-- department no. 38
select employee_id, first_name,last_name,hire_date from employees where department_id=38;

-- Q.9 Retrieve the phone number, job ID, and employee salary, whose name is "Gopi Kumar".
select phone_number,job_id,salary from employees where first_name='Gopi' and last_name='Kumar';
