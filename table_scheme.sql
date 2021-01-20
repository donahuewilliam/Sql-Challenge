Create Table Departments (
    dept_no VARCHAR   NOT NULL Primary Key,
    dept_name VARCHAR   NOT NULL
	
);

SELECT * from Departments;
drop table Employees;
Create Table Employees (
    emp_no VARCHAR Not Null Primary Key,
	emp_title_id VARCHAR Not Null,
    birth_date date Not Null,
    first_name VARCHAR Not Null,
    last_name VARCHAR Not Null,
    sex VARCHAR Not Null,
    hire_date date Not Null
)
;

SELECT * from Employees;
drop table Dept_Emp;
Create Table Dept_Emp (
    	emp_no VARCHAR Not Null,
		dept_no VARCHAR Not Null,
	Foreign Key (dept_no) References Departments(dept_no),
	Foreign Key (emp_no) References Employees(emp_no)
);

SELECT * from Dept_Emp;
drop table Dept_Manager;
Create Table Dept_Manager (
    	dept_no VARCHAR   Not Null,
    	emp_no VARCHAR   Not Null,
	Foreign Key (emp_no) References Employees(emp_no),
	Foreign Key (dept_no) References Departments(dept_no)
);

SELECT * from Dept_Manager;


Create Table Salaries (
    emp_no VARCHAR Not Null,
	salary int   Not Null,
	Foreign Key (emp_no) References Employees(emp_no)
);

SELECT * from Salaries;

drop table Titles;
Create Table Titles (
		title_id VARCHAR Not Null,
    	title VARCHAR Not Null
);

Select * from Titles; 