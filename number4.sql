--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.

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