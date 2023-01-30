INSERT INTO department (department_name)
VALUES ('Sales'),
       ('HR'),
       ('Programming'),
       ('IT'),
       ('Executive');

INSERT INTO role (title, salary, department_id)
VALUES ('Account Executive', 200000, 1),
       ('Sr. Account Executive', 300000, 1),
       ('Sales Director', 400000, 1),
       ('HR Coordinator', 150000, 2),
       ('HR Generalist', 170000, 2),
       ('HR Director', 200000, 2),
       ('Jr. Developer', 170000, 3),
       ('Sr. Developer', 250000, 3),
       ('Programming Director', 450000, 3),
       ('IT Project Manager', 170000, 4),
       ('IT Project Director', 200000, 4),
       ('Chief Executive Officer', 600000, 5),
       ('Chief Operating Officer', 550000, 5),
       ('Chief Financial Officer', 550000, 5);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Ozzy', 'Osbourne', 12, NULL),
       ('Alice', 'Cooper', 13, 1),
       ('Jimi', 'Hendrix', 14, 1),
       ('Axl', 'Rose', 3, 2),
       ('James', 'Hetfield', 9, 2),
       ('Bruce', 'Dickinson', 11, 2),
       ('Chester', 'Bennington', 6, 2),
       ('Brian', 'Johnson', 1, 4),
       ('Serj', 'Tankian', 1, 4),
       ('Corey', 'Taylor', 2, 4),
       ('Marilyn', 'Manson', 4, 7),
       ('Anthony', 'Kiedis', 5, 7),
       ('Lemmy', 'Kilmister', 5, 7),
       ('Kurt Donald', 'Cobain', 7, 5),
       ('Ivan', 'Moody', 8, 5),
       ('Michael', 'Poulsen', 10, 6),
       ('Maria', 'Brink', 10, 6);