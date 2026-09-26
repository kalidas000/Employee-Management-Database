-- ============================================
-- Employee Management Database - Queries
-- ============================================


-- 1. List all employees with their departments
SELECT e.name AS employee_name,
       d.name AS department_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.id = e.department_id;


-- 2. Find employees working in IT
SELECT e.name AS employee_name,
       d.name AS department_name
FROM departments AS d
INNER JOIN employees AS e
ON d.id = e.department_id
WHERE d.name = 'IT';


-- 3. Find employees earning more than 50,000
SELECT e.name AS employee_name,
       d.name AS department_name,
       e.salary
FROM departments AS d
INNER JOIN employees AS e
ON d.id = e.department_id
WHERE e.salary > 50000;


-- 4. List employees and their projects
SELECT e.name AS employee_name,
       p.name AS project_name
FROM employees AS e
INNER JOIN employee_projects AS ep
ON e.id = ep.employee_id
INNER JOIN projects AS p
ON ep.project_id = p.id;


-- 5. Find the department with the highest average salary
SELECT d.name AS department_name,
       AVG(e.salary) AS average_salary
FROM departments AS d
INNER JOIN employees AS e
ON d.id = e.department_id
GROUP BY d.id
ORDER BY average_salary DESC
LIMIT 1;


-- 6. Find employees earning more than
-- the average salary of their own department
SELECT e.name AS employee_name,
       d.name AS department_name,
       e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.id
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees AS ie
    WHERE ie.department_id = e.department_id
);