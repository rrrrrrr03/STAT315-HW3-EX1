SELECT name FROM students;
SELECT * FROM students WHERE age > 30;
SELECT name FROM students WHERE gender = 'F' AND age = 30;
SELECT points FROM students WHERE name = 'Alex';
INSERT INTO students(id, name, age, gender, points)
VALUES (7, 'Rebecca', 20, 'F', 200);
UPDATE students SET points = 400 WHERE name = 'Basma';
UPDATE students SET points = 100 WHERE name = 'Alex';

CREATE TABLE graduates(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates (name, age, gender, points)
SELECT name, age, gender, points
FROM students
WHERE students.name = 'Layal';
UPDATE graduates SET graduation = '08-09-2018' WHERE name = 'Layal';
DELETE FROM students WHERE name = 'Layal';

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;