# Employee Management Database

A SQL database project built to practice relational database design, SQL queries, joins, aggregation, and subqueries.

## Project Overview

This project manages employees, departments, projects, and employee-project assignments.

The database demonstrates relationships between multiple tables and uses SQL queries to retrieve and analyze employee and project data.

## Database Structure

The database contains four tables:

### Departments

Stores department information.

- `id` - Primary key
- `name` - Department name

### Employees

Stores employee information.

- `id` - Primary key
- `name` - Employee name
- `department_id` - Foreign key referencing `departments`
- `salary` - Employee salary

### Projects

Stores project information.

- `id` - Primary key
- `name` - Project name
- `budget` - Project budget

### Employee Projects

Connects employees with projects.

- `employee_id` - Foreign key referencing `employees`
- `project_id` - Foreign key referencing `projects`
- Composite primary key: `(employee_id, project_id)`

