CREATE TABLE IF NOT EXISTS employee(
    id INT,
    name VARCHAR(255),
    salary INT,
    manager_id INT
);

TRUNCATE TABLE employee;

INSERT INTO employee (id, name, salary, manager_id) 
    VALUES (1, 'Joe', 70000, 3);
INSERT INTO employee (id, name, salary, manager_id)
    VALUES (2, 'Henry', 80000, 4);
INSERT INTO employee (id, name, salary, manager_id)
    VALUES (3, 'Sam', 60000, null);
INSERT INTO employee (id, name, salary, manager_id)
    VALUES (4, 'Max', 90000, null);
 
SELECT e.name FROM employee e INNER JOIN employee m ON m.id = e.manager_id
    WHERE e.salary > m.salary;



