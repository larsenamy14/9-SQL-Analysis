CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
	);
	
SELECT * FROM titles;

CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date date,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);
	
SELECT * FROM employees;

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
SELECT * FROM salaries;

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30)
);

SELECT * FROM departments;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
	);
	
SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no, dept_no) REFERENCES dept_emp(emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

SELECT * FROM dept_manager;


DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;