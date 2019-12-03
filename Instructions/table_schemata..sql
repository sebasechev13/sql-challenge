-- Drop Tables if Existing
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

create table employees(
---
emp_no int PRIMARY KEY NOT NULL ,
birth_date varchar,
first_name varchar,
last_name varchar,
gender varchar(1),
hire_date varchar
);



CREATE TABLE departments (
---
dept_no varchar PRIMARY KEY NOT NULL,
dept_name varchar
);
create table dept_emp(
---
emp_no int,
dept_no varchar, 
from_date varchar,
to_date varchar,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)


);

create  table dept_manager(
---
dept_no varchar,
emp_no int,
from_date varchar,
to_date varchar,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


create table salaries(
---
emp_no int,
salary int,
from_date varchar,
to_date varchar,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
create table titles(
---
emp_no int,
title varchar,
from_date varchar,
to_date varchar,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);