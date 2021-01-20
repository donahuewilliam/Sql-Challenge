-- 1. 

SELECT Employees.emp_no, Employees.emp_title_id, Employees.last_name, Employees.first_name, Employees.sex,
Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Employees.emp_no = Salaries.emp_no;


-- 2. 

SELECT emp_no, first_name, last_name, hire_date from Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';


-- 3. 

SELECT Dept_Manager.dept_no, 
	   Departments.dept_name,
	   Dept_Manager.emp_no,
	   Employees.last_name,
	   Employees.first_name
FROM Dept_Manager
INNER JOIN Departments ON
Dept_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON
Dept_Manager.emp_no = Employees.emp_no;


-- 4. 

SELECT Employees.emp_no, 
	   Employees.last_name, 
	   Employees.first_name,
	   Departments.dept_name
FROM Employees
INNER JOIN Dept_Manager ON
Employees.emp_no = Dept_Manager.emp_no
INNER JOIN Departments ON
Dept_Manager.dept_no = Departments.dept_no;


-- 5. 

SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-- 6. 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
JOIN Dept_Emp ON
e.emp_no = Dept_Emp.emp_no
INNER JOIN Departments AS d ON
Dept_Emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';


-- 7. 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
JOIN Dept_Emp ON
e.emp_no = Dept_Emp.emp_no
INNER JOIN Departments AS d ON
Dept_Emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR 
	  dept_name = 'Development';


-- 8. 

SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;
