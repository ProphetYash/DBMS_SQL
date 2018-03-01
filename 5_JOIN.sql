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
SELECT * FROM Student;
SELECT * FROM L_Account;

-- JOIN
SELECT L_Account.DateOfIssue, L_Account.BookTitle, Student.sNAME, Student.Branch
FROM Student INNER JOIN L_Account ON Student.S_ID=L_Account.S_ID
ORDER by L_Account.DateOfIssue;

--Left Outer JOIN
SELECT L_Account.DateOfIssue, L_Account.BookTitle, Student.sNAME, Student.Branch
FROM Student LEFT JOIN L_Account ON Student.S_ID=L_Account.S_ID
ORDER by L_Account.DateOfIssue;

--Right Outer JOIN
SELECT L_Account.DateOfIssue, L_Account.BookTitle, Student.sNAME, Student.Branch
FROM Student RIGHT JOIN L_Account ON Student.S_ID=L_Account.S_ID
ORDER by L_Account.DateOfIssue;

--FULL Outer JOIN
SELECT L_Account.DateOfIssue, L_Account.BookTitle, Student.sNAME, Student.Branch
FROM Student FULL JOIN L_Account ON Student.S_ID=L_Account.S_ID
ORDER by L_Account.DateOfIssue;