CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	salary INTEGER
	);
	
SELECT * FROM salaries;

CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) ,
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date VARCHAR(10)
	);
	
SELECT * FROM employees;

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
	);
	
SELECT * FROM titles;


CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INTEGER NOT NULL PRIMARY KEY
	);

SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(4)
	);
	
SELECT * FROM dept_emp;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30)
);

SELECT * FROM departments;

DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;