DROP Table Student;
DROP Table L_Account;
CREATE TABLE
Student(
S_ID INT NOT NULL PRIMARY KEY,
sNAME VARCHAR(20) NOT NULL,
Age INT NOT NULL,
Branch VARCHAR(3) NOT NULL,
Semester INT NOT NULL
);
CREATE TABLE
L_Account(
B_ID INT NOT NULL PRIMARY KEY,
S_ID INT,
BookTitle VARCHAR(20),
DateOfIssue VARCHAR(30)
);
INSERT Student
(S_ID, sName, Age, Branch, Semester)
Values
(1, 'Yash Yadav', 19, 'CSE', 4),
(2, 'Rishabh Kaushik', 19, 'CSE', 4),
(3, 'Aman Singh', 21, 'CSE', 4),
(4, 'Preet Singhwal', 20, 'CSE', 4),
(5, 'Pravesh Pal', 19, 'CSE', 4);
INSERT L_Account
(B_ID, BookTitle, S_ID, DateOfIssue)
Values
(112, 'CS-W Stallings', 4, '01 March 2018'),
(113, 'DBMS-Korth', 3, '01 March 2018'),
(114, 'DBMS-Navathe',  1, '03 March 2018'),
(115, 'DBMS-Korth', 2, '04 March 2018'),
(116, 'DBMS-Navathe', 1, '04 March 2018'),
(117, 'Math-VP Mishra', NULL, NULL),
(118, 'TOC- Hopcroft', NULL , NULL);

CREATE VIEW [Age>=20] AS--Creating a View
SELECT S_ID, sName, Age
FROM  Student
WHERE AGE >= 20;
UPDATE [Age>=20]	--Updating the Data
SET Age = 22
WHERE sNAME = 'Aman Singh';

SELECT * FROM Student;
SELECT * FROM [Age>=20];

DELETE FROM [Age>=20]
WHERE Age = 22;

SELECT * FROM Student;
SELECT * FROM [Age>=20];

DROP VIEW [Age>=20];