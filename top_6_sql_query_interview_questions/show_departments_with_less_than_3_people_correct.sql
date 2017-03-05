SELECT b.dept_name, COUNT(a.dept_id) as "Number of Employee"
from employee a FULL OUTER JOIN department b ON a.dept_id=b.dept_id
GROUP BY b.dept_name;