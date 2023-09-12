--List the first name, last name, and sex of each employee whose first name 
--is Hercules and whose last name begins with the letter B.

SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM
    employees
WHERE
    first_name = 'Hercules' AND last_name LIKE 'B%';