CREATE TABLE IF NOT EXISTS employee (
    id INT,
    salary INT
);

TRUNCATE TABLE employee;

INSERT INTO employee (id, salary) VALUES (1, 100);
INSERT INTO employee (id, salary) VALUES (2, 200);
INSERT INTO employee (id, salary) VALUES (3, 300);

SELECT MAX(salary) second_highest_salary FROM employee 
    WHERE salary < (SELECT MAX(salary) FROM employee);