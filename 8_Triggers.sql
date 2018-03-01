--DROP Table Student;

--DROP TRIGGER T1;
CREATE TRIGGER T1--To Be run in a Separate Batch Only
ON dbo.Student--Here dbo denotes the Schema
AFTER INSERT, DELETE, UPDATE
AS
RAISERROR ('Ha Ha! A Trigger is Active so changes cannot be committed', 16, 10)
Rollback;

CREATE TABLE
Student(
S_ID INT NOT NULL PRIMARY KEY,
sNAME VARCHAR(20) NOT NULL,
Age INT NOT NULL,
Branch VARCHAR(3) NOT NULL,
Semester INT NOT NULL
);
INSERT Student
(S_ID, sName, Age, Branch, Semester)
Values
(1, 'Yash Yadav', 19, 'CSE', 4),
(2, 'Rishabh Kaushik', 19, 'CSE', 4),
(3, 'Aman Singh', 21, 'CSE', 4),
(4, 'Preet Singhwal', 20, 'CSE', 4),
(5, 'Pravesh Pal', 19, 'CSE', 4);
SELECT * FROM Student;

UPDATE Student
SET sName = 'Demo'
WHERE S_ID = 1;
SELECT * FROM Student;