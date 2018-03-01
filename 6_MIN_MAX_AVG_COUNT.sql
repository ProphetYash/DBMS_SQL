CREATE TABLE
Books(
B_ID INT NOT NULL PRIMARY KEY,
bNAME VARCHAR(20) NOT NULL,
Branch VARCHAR(3) NOT NULL,
Semester INT NOT NULL,
Price INT NOT NULL
);
INSERT Books
(B_ID, bNAME, Branch, Semester, Price)
Values
(1, 'Book1', 'CSE', 4, 2000),
(2, 'Book1', 'CSE', 4, 2000),
(3, 'Book2', 'CSE', 2, 2014),
(4, 'Book3', 'CSE', 4, 2438),
(5, 'Book4', 'CSE', 1, 3999),
(6, 'Book5', 'IT', 4, 3000),
(7, 'Book6', 'IT', 2, 1999),
(8, 'Book7', 'IT', 4, 2045),
(9, 'Book7', 'IT', 3, 2045),
(10, 'Book8', 'IT', 8, 3368);
SELECT MIN(Price) as CostOfCheapestBook
FROM Books
SELECT MAX(Price) as CostOfExpensiveBook_Price
FROM Books
SELECT AVG(Price) as AverageCostOfBook
FROM Books
SELECT COUNT(Price) as TotalBooks
FROM Books
DROP Table Books;