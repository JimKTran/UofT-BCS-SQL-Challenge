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

The diagram is then used to convert the files into tables in the EMPLOYEES_DB in Postgres pgAdmin. Additionally, the tables were generated from QuickDBD diagrams
to a tables [schemata](03-Tables_Schemata.sql).

#### Data Analysis

Once the tables were created and data imported to the EMPLOYEES_DB in Postgres pgAdmin.  The database was used to generate the [Main_Query](04-Main_Query.sql) to answer
the following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.


## Copyright

Data Boot Camp © 2018. All Rights Reserved.
