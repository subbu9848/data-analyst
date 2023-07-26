SELECT emp_id, emp_name, emp_department
FROM employees
UNION
SELECT contractor_id, contractor_name, contractor_department
FROM contractors;


-- Create a UNION between employees and offices tables
SELECT employee_id AS id, first_name, last_name, job_title, salary, reports_to, office_id, NULL AS address, NULL AS city, NULL AS state
FROM employees
UNION
SELECT office_id AS id, NULL AS first_name, NULL AS last_name, NULL AS job_title, NULL AS salary, NULL AS reports_to, office_id, address, city, state
FROM offices;
