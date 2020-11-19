-- Data Analysis for SQL homework

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no as "Employee Number"
	   , e.first_name as "First Name" 
	   , e.last_name as "Last Name"
       , e.sex as "Sex"
	   , s.salary as "Salary"
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.first_name as "First Name"
	   , e.last_name as "Last Name"
	   , e.hire_date as "Hire Date"
FROM employees e
WHERE e.hire_date between '01/01/1986' and '12/31/1986'
ORDER BY e.hire_date DESC;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no as "Department Number", d.dept_name as "Department Name", e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", ti.title as "Title"
FROM employees e
	JOIN dept_manager dm
	ON e.emp_no = dm.emp_no
		JOIN departments d
		ON dm.dept_no = d.dept_no
			JOIN titles ti
			ON e.emp_title_id = ti.title_id

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.





































































