DROP DATABASE IF EXISTS employeeTrackerDB;

CREATE DATABASE employeeTrackerDB;

USE employeeTrackerDB;
-- department name
CREATE TABLE department (
     department_id INT NOT NULL AUTO_INCREMENT,
     department_name VARCHAR(30) NOT NULL,

     PRIMARY KEY (department_id),
     UNIQUE KEY (department_name)
);
-- name salary & department
CREATE TABLE role (
     role_id INT NOT NULL AUTO_INCREMENT,
     title VARCHAR(30) NOT NULL,
     salary DECIMAL NOT NULL,
     department_id INT NOT NULL,
  
    PRIMARY KEY (role_id),
    FOREIGN KEY (department_id) 
    REFERENCES department(department_id)
);
-- first name, last name, role, and manager
CREATE TABLE employee (
     employee_id INT NOT NULL AUTO_INCREMENT,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     role_id INT NOT NULL,
     manager_id INT REFERENCES employee(id),

    PRIMARY KEY (employee_id),
    FOREIGN KEY (role_id) 
    REFERENCES role(role_id)
);