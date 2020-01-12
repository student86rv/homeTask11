CREATE TABLE IF NOT EXISTS new_person (
    id INT,
    email VARCHAR(255)
);

TRUNCATE TABLE new_person;

INSERT INTO new_person (id, email) VALUES (1, 'a@b.com');
INSERT INTO new_person (id, email) VALUES (2, 'c@d.com');
INSERT INTO new_person (id, email) VALUES (3, 'a@b.com');

SELECT email FROM new_person GROUP BY email
    HAVING COUNT(email) > 1;