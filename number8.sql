--List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name).

SELECT
    last_name AS "Last Name",
    COUNT(*) AS "Frequency"
FROM
    employees
GROUP BY
    last_name
ORDER BY
    "Frequency" DESC, "Last Name";
