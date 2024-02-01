# SQL-Analysis

## Create Tables with matching headers from csv files
Assign primary and foreign keys to each table

## Import csv files into designated tables

## Data Analysis

### 1. List the employee number, last name, first name, sex, and salary of each employee.
Join employees table with salary table

### 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Use a subquery to limit the employees to those that were hired after 1986 (right 4 digits = '1986')

### 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Inner join employees, departments, and department employees tables

### 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Full join employees and departments tables

### 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Use WHERE, AND, and LIKE '%' to filter employees

### 6. List each employee in the Sales department, including their employee number, last name, and first name.
Join employees and departments tables with a WHERE statement to only retrieve Sales employees

### 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Join department employees and departments tables with a WHERE and OR statement to retreive Sales and Development employees

### 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last names of employees and count of last names, group by last name, and order the count using ORDER BY count DESC

