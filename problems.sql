create database problems;

use face_recognizer;
show tables;

use problems;
show tables;


# SQL employee table creation 

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2)
);


# insert values to employee table 
INSERT INTO employee (emp_id, name, department_id, salary)
VALUES
    (1, 'John Doe', 101, 5000),
    (2, 'Jane Smith', 102, 5500),
    (3, 'Robert Brown', 103, 6000),
    (4, 'Emily Davis', 104, 6500),
    (5, 'Michael Wilson', 105, 7000),
    (6, 'Laura Johnson', 101, 7500),
    (7, 'David Miller', 102, 8000),
    (8, 'Sophia Garcia', 103, 8500),
    (9, 'Daniel Martinez', 104, 9000),
    (10, 'Chloe Anderson', 105, 5200),
    (11, 'Ethan Taylor', 101, 5800),
    (12, 'Isabella Moore', 102, 6300),
    (13, 'Alexander Jackson', 103, 6700),
    (14, 'Amelia Thomas', 104, 7200),
    (15, 'Olivia Harris', 105, 7700),
    (16, 'Benjamin Martin', 101, 8200),
    (17, 'Charlotte White', 102, 8600),
    (18, 'Lucas Perez', 103, 5100),
    (19, 'Ava Clark', 104, 5400),
    (20, 'Mason Rodriguez', 105, 5900);
    
    
select * from employee;


/*
emp_id: Unique ID for each employee, starting from 1.
name: Employee names for demonstration purposes. You can modify them as needed.
department_id: Assigned to departments starting from 101. Some employees share the same department_id.
salary: Ranges from 5000 to 9000 with variations.
*/


/*
Here is the SQL query to create a departments table with department_id and department_name columns:
*/

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name)
VALUES
    (101, 'Human Resources'),
    (102, 'Finance'),
    (103, 'Engineering'),
    (104, 'Marketing'),
    (105, 'Sales');
    
    
select * from departments;

/*
department_id: A unique identifier for each department.
department_name: A descriptive name for each department (e.g., "Human Resources").
*/


# prject table 
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);



INSERT INTO projects (project_id, project_name, emp_id)
VALUES
    (1, 'Project Alpha', 1),
    (2, 'Project Beta', 2),
    (3, 'Project Gamma', 3),
    (4, 'Project Delta', 4),
    (5, 'Project Epsilon', 5),
    (6, 'Project Zeta', 6),
    (7, 'Project Eta', 7),
    (8, 'Project Theta', 8),
    (9, 'Project Iota', 9),
    (10, 'Project Kappa', 10),
    (11, 'Project Lambda', 11),
    (12, 'Project Mu', 12),
    (13, 'Project Nu', 13),
    (14, 'Project Xi', 14),
    (15, 'Project Omicron', 15),
    (16, 'Project Pi', 16),
    (17, 'Project Rho', 17),
    (18, 'Project Sigma', 18),
    (19, 'Project Tau', 19),
    (20, 'Project Upsilon', 20);

select * from projects;

/*
project_id: A unique identifier for each project.
project_name: Name of the project.
emp_id: Links the project to an employee (emp_id from the employee table).
The FOREIGN KEY constraint ensures referential integrity between the projects table and the employee table. If an emp_id does not exist in the employee table, the record cannot be added to the projects table.

*/

# Q1. Retrieve all employee names and their respective department names.
select * from employee;
select * from departments;

select emp_id as 'Employee ID', employee.department_id as 'Department ID',name as 'Employee name '  , department_name as 'Department Name' 
from employee
inner join departments on employee.department_id = departments.department_id;



# Q2. List all employees and their projects, including employees without any projects.
select * from employee;
select * from departments;
select * from projects;

select name,project_name 
from employee
inner join projects on employee.emp_id = projects.emp_id;


# Q3 






/*

*/

/*

*/

/*

*/








