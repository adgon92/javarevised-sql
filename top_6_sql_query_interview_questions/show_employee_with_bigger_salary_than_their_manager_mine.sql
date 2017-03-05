SELECT employees.emp_name FROM employee as employees
  LEFT JOIN employee as managers on employees.mngr_id = managers.emp_id
  WHERE employees.salary > managers.salary;