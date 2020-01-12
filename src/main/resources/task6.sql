CREATE TABLE IF NOT EXISTS courses (
	student VARCHAR(255),
	class VARCHAR(255)
);

TRUNCATE TABLE courses;

INSERT INTO courses (student, class) VALUES ('A', 'Math');
INSERT INTO courses (student, class) VALUES ('B', 'English');
INSERT INTO courses (student, class) VALUES ('C', 'Math');
INSERT INTO courses (student, class) VALUES ('D', 'Biology');
INSERT INTO courses (student, class) VALUES ('E', 'Math');
INSERT INTO courses (student, class) VALUES ('F', 'Computer');
INSERT INTO courses (student, class) VALUES ('G', 'Math');
INSERT INTO courses (student, class) VALUES ('H', 'Math');
INSERT INTO courses (student, class) VALUES ('I', 'Math');

SELECT class FROM courses GROUP BY class
    HAVING COUNT(*) >= 5;