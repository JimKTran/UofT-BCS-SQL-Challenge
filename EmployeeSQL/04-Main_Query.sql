-- Data Analysis for SQL homework

-- ================================================================================================================================================================
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no as "Employee Number"
	   , e.first_name as "First Name" 
	   , e.last_name as "Last Name"
       , e.sex as "Sex"
	   , s.salary as "Salary"
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- ================================================================================================================================================================
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.first_name as "First Name"
	   , e.last_name as "Last Name"
	   , e.hire_date as "Hire Date"
FROM employees e
WHERE e.hire_date between '01/01/1986' and '12/31/1986'
ORDER BY e.hire_date DESC;

-- ================================================================================================================================================================
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no as "Department Number"
		, d.dept_name as "Department Name"
		, e.emp_no as "Employee Number"
		, e.last_name as "Last Name"
		, e.first_name as "First Name"
		, ti.title as "Title"
FROM employees e
	JOIN dept_manager dm
	ON e.emp_no = dm.emp_no
		JOIN departments d
		ON dm.dept_no = d.dept_no
			JOIN titles ti
			ON e.emp_title_id = ti.title_id;
			
-- ================================================================================================================================================================
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no as "Employee Number"
		, e.last_name as "Last Name"
		, e.first_name as "First Name"
		, d.dept_name as "Department Name"
FROM employees e
	JOIN dept_emp de
	ON e.emp_no = de.emp_no
		JOIN departments d
		ON de.dept_no = d.dept_no;
		
-- ================================================================================================================================================================
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name as "First Name"
		, e.last_name as "Last Name"
		, e.sex as "Sex"
FROM employees e
WHERE e.first_name = 'Hercules' and e.last_name like 'B%';

-- ================================================================================================================================================================
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no as "Employee Number"
		, e.last_name as "Last Name"
		, e.first_name as "First Name"
		, d.dept_name as "Department Name"
FROM employees e
	JOIN dept_emp de
	ON e.emp_no = de.emp_no
		JOIN departments d
		ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales';

-- ================================================================================================================================================================
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no as "Employee Number"
		, e.last_name as "Last Name"
		, e.first_name as "First Name"
		, d.dept_name as "Department Name"
FROM employees e
	JOIN dept_emp de
	ON e.emp_no = de.emp_no
		JOIN departments d
		ON de.dept_no = d.dept_no
		WHERE d.dept_name 
		IN ('Sales', 'Development');

-- ================================================================================================================================================================
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT COUNT(e.last_name) as "Count Last Name"
		, e.last_name as "Last Name"
FROM employees e
GROUP BY e.last_name
ORDER BY e.last_name DESC

-- ================================================================================================================================================================


















































