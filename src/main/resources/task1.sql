CREATE TABLE person (
    person_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE address (
    address_id INT,
    person_id INT,
    city VARCHAR(255),
    state VARCHAR(255)
);

TRUNCATE TABLE person;

INSERT INTO person (person_id, last_name, first_name)
    VALUES ('1', 'Wang', 'Allen');

INSERT INTO person (person_id, last_name, first_name)
    VALUES ('2', 'Vasya', 'Pupkin');
 
TRUNCATE TABLE address;

INSERT INTO address (address_id, person_id, city, state) 
    VALUES ('1', '2', 'New York City', 'New York');

SELECT first_name, last_name, a.city city, a.state state FROM person
    LEFT JOIN  address a ON person.person_id = a.person_id;