DROP DATABASE IF EXISTS Employee_Tracker;

CREATE DATABASE Employee_Tracker;

USE Employee_Tracker;

CREATE TABLE department(
id integer auto_increment not null,
name varchar(30) not null,
primary key(id)
);

CREATE TABLE role(
id integer auto_increment not null,
title varchar(30) not null,
salary decimal not null,
department_id Integer not null,
constraint fk_department_id foreign key (department_id) references department(id),
primary key(id)
);


CREATE TABLE employee(
id integer auto_increment not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
role_id integer not null,
constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
manager_id integer ,
constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
Primary key(id)
);

select * from employee;
select * from role;
select * from department;

INSERT into department (name)
VALUES ("Sales");
INSERT into department (name)
VALUES ("Engineering");
INSERT into department (name)
VALUES ("Finance");
INSERT into department (name)
VALUES ("Legal");
INSERT into department (name)
VALUES ("Manager");

select * from department;

INSERT into role (title, salary, department_id)
VALUES ("Solutions Architect", 183000, 2);
INSERT into role (title, salary, department_id)
VALUES ("VP, Marketing", 145000, 2);
INSERT into role (title, salary, department_id)
VALUES ("Software Engineer", 139221, 1);
INSERT into role (title, salary, department_id)
VALUES ("Sr.Architect", 300000, 3);
INSERT into role (title, salary, department_id)
VALUES ("HR Manager", 180000, 4);
INSERT into role (title, salary, department_id)
VALUES ("Jr Manager", 165000, 5);

select * from role;

INSERT into employee (first_name, last_name, role_id)
values ("Alice", "Wonderland", 3); 
INSERT into employee (first_name, last_name, role_id)
values ("Shoe", "Black", 4);
INSERT into employee (first_name, last_name, role_id)
values ("Phone", "Macbook", 5);
INSERT into employee (first_name, last_name, role_id)
values ("Bruce", "Springstein", 6);
INSERT into employee (first_name, last_name, role_id)
values ("Robert", "Handsome", 7);
INSERT into employee (first_name, last_name, role_id)
values ("Bob", "Dylon", 8);

select * from employee;
