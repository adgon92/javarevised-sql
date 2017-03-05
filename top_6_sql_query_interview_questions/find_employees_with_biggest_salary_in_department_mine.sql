SELECT employees.emp_name, employees.dept_id FROM employee employees
  JOIN (
    SELECT a.dept_id, MAX(salary) as max_salary
    FROM employee a
    JOIN department b ON a.dept_id = b.dept_id
    GROUP BY a.dept_id
    ) max_salaries
  ON employees.salary = max_salaries.max_salary
  AND employees.dept_id = max_salaries.dept_id