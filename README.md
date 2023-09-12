# Challenge9

# SQL Queries Documentation

## Overview

This repository contains SQL queries for a database that stores employee information, including details such as employee numbers, names, salaries, hire dates, departments, and titles. These queries provide insights into the employee data and help answer various questions.

## Table of Contents

1. [SQL Queries](#sql-queries)
2. [Running the Queries](#running-the-queries)

## SQL Queries

## List the employee number, last name, first name, sex, and salary of each employee:

```sql
-- SQL Query 1
SELECT
    emp_no AS "Employee Number",
    last_name AS "Last Name",
    first_name AS "First Name",
    sex AS "Sex",
    (SELECT salary FROM salaries WHERE employees.emp_no = salaries.emp_no) AS "Salary"
FROM
    employees;

## List the first name, last name, and hire date for the employees who were hired in 1986:
-- SQL Query 2
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    hire_date AS "Hire Date"
FROM
    employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;

## List the manager of each department along with their department number, department name, employee number, last name, and first name:
-- SQL Query 3
SELECT
    dm.dept_no AS "Department Number",
    d.dept_name AS "Department Name",
    dm.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    dept_manager dm
JOIN
    departments d ON dm.dept_no = d.dept_no
JOIN
    employees e ON dm.emp_no = e.emp_no;

## List the department number for each employee along with that employee’s employee number, last name, first name, and department name:
-- SQL Query 4
SELECT
    de.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_no AS "Department Number",
    d.dept_name AS "Department Name"
FROM
    dept_emp de
JOIN
    employees e ON de.emp_no = e.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no;

### List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B:
-- SQL Query 5
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM
    employees
WHERE
    first_name = 'Hercules' AND last_name LIKE 'B%';

## List each employee in the Sales department, including their employee number, last name, and first name:
-- SQL Query 6
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = 'Sales';

## List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name:
-- SQL Query 7
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development');

## List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name):
-- SQL Query 8
SELECT
    last_name AS "Last Name",
    COUNT(*) AS "Frequency"
FROM
    employees
GROUP BY
    last_name
ORDER BY
    "Frequency" DESC, "Last Name";##
```

## Running the Queries

## 1.Connect to your PostgreSQL database.
## 2.Open a SQL client or command-line interface.
## 3.Copy and paste the SQL queries from this README into your SQL client.
## 4.Execute the queries to retrieve the
