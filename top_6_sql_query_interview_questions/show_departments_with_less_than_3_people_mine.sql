-- Because of inner join empty departments were not included!

SELECT emp_name from employee
  LEFT JOIN (
    SELECT d.dept_id , COUNT(*) as employees_count
    FROM department d
      JOIN employee e
      ON e.dept_id = d.dept_id
    GROUP BY d.dept_id
    ) emp_count
  ON emp_count.dept_id = employee.dept_id
  WHERE employees_count < 3