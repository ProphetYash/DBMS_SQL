DROP Table STUDENT;
CREATE TABLE
STUDENT(
SID INT PRIMARY KEY,
FNAME VARCHAR(10),
LNAME VARCHAR(10),
AGE INT,
FSUBJECTS VARCHAR(10)
);
Insert STUDENT
(SID,FNAME, LNAME, AGE, FSUBJECTS)
values
(1, 'Person1F', 'Person1L', 18, 'ABC'),
(2, 'Person2F', 'Person2L', 19, 'DEF'),
(3, 'Person3F', 'Person3L', 20, 'GHI'),
(4, 'Person4F', 'Person4L', 19, 'JKL'),
(5, 'Person5F', 'Person5L', 18, 'MNO');
Select * FROM STUDENT;
