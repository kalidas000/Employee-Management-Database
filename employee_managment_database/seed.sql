INSERT INTO departments (id, name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Engineering');

INSERT INTO employees (id, name, department_id, salary)
VALUES
(101, "Arun", 1, 45000),
(102, "Meera", 2, 38000),
(103, "Rahul", 1, 52000),
(104, "Anjali", 3, 48000),
(105, "Vivek", 4, 65000),
(106, "Neha", 1, 58000),
(107, "Akash", 4, 72000),
(108, "Diya", 2, 41000);

INSERT INTO projects (id, name, budget)
VALUES
(201, 'Website Redesign', 150000),
(202, 'Mobile App', 250000),
(203, 'Payroll System', 180000),
(204, 'Inventory System', 300000),
(205, 'Data Analytics', 220000);

INSERT INTO employee_projects (employee_id, project_id)
VALUES
(101, 201),
(101, 202),
(102, 203),
(103, 201),
(103, 204),
(104, 203),
(105, 204),
(105, 205),
(106, 202),
(106, 205),
(107, 204),
(108, 203);