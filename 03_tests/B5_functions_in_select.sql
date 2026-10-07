SELECT employee_id,
       first_name || ' ' || last_name AS name,
       salary,
       fn_annual_salary(salary) AS annual_salary
FROM employees;

SELECT employee_id,
       fn_dept_name(department_id) AS department
FROM employees;