CREATE TABLE Class_HW (student VARCHAR(30), class VARCHAR(30));
INSERT INTO Class_HW
VALUES
   ('A', 'Math'),
   ('B', 'English'),
   ('C', 'Math'),
   ('D', 'Biology'),
   ('E', 'Math'),
   ('F', 'Computer'),
   ('G', 'Math'),
   ('H', 'Math'),
   ('I', 'Math');
   
SELECT 
    class
FROM
    class_hw
GROUP BY class
HAVING COUNT(*) >= 5;

CREATE TABLE Email_HW1 (Id INT, Email VARCHAR(30));
INSERT INTO Email_HW1
VALUES
   (1, 'a@b.com'),
   (2, 'c@d.com'),
   (3, 'a@b.com');




CREATE TABLE Email_HW (Id INT, Email VARCHAR(30));
INSERT INTO Email_HW
VALUES
   (1, 'john@example.com'),
   (2, 'bob@example.com'),
   (3, 'john@example.com');

delete p from Person as p
where p.Id not in 
(SELECT 
    Id
FROM
    (SELECT 
        MIN(Person.Id) AS Id
    FROM
        Person
    GROUP BY Person.Email) AS ToRemovedId);