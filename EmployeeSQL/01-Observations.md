# Unit 8 | SQL Homework - Employee Database: A Mystery in Two Parts
### _Submitted November 26, 2020_
#### _By: Jim Tran_

![SQL](SQL_Pic.png)

#### Data Modeling

The use of Quick Database Diagram (QuickDBD) to map out the various csv raw data files to convert to data tables was quick and very helpful.

![ERD](02-ERD.png)

#### Data Engineering

The ERD diagram identifies the primary key, foreign key and data types of each field; and shows the data linkages between each of the csv data files.

1. employees
    * emp_no int PK
    * emp_title_id varchar FK >- titles.title_id
    * birth_date date
    * first_name varchar
    * last_name varchar
    * sex varchar
    * hire_date date

2. salaries
    * emp_no int FK - employees.emp_no
    * salary int

3. dept_emp
    * emp_no int FK >- employees.emp_no
    * dept_no varchar FK >- departments.dept_no

4. dept_manager
    * dept_no varchar
    * emp_no int FK - employees.emp_no

5. departments
    * dept_no varchar PK
    * dept_name varchar

6. titles
    * title_id varchar PK
    * title varchar

The diagram is then used to convert the files into tables in the EMPLOYEES_DB in Postgres. Additionally, the tables were generated from QuickDBD diagrams
to a tables [schemata](03-Tables_Schemata.sql).

#### Data Analysis

Once the tables were created and data imported, the EMPLOYEES_DB was used to query answers to the following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.





## Copyright

Data Boot Camp © 2018. All Rights Reserved.
