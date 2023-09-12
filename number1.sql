--List the employee number, last name, first name, sex, and salary of each employee.


SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    e.sex AS "Sex",
    s.salary AS "Salary"
FROM
    employees e
INNER JOIN
    salaries s ON e.emp_no = s.emp_no;
	



	






	


