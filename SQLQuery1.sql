

--1 Library database yaratmaq--
CREATE DATABASE Library
USE Library

--2 Books table yaratmaq (Id, Name,Price columnları ilə)--
CREATE TABLE Books
(
	Id INT,
	Name NVARCHAR(30),
	Price INT
)

SELECT * FROM Books


--3 Books table-na Author column və Genre column əlavə etmək--
ALTER TABLE Books
ADD Author NVARCHAR(20)

ALTER TABLE Books
ADD Genre NVARCHAR(20)




--4 Books table-dan Genre column silmek--
ALTER TABLE Books
DROP COLUMN Genre


SELECT * FROM Books

--5 Books table-na datalar insert etmək--
INSERT INTO Books
VALUES
(1,'Name1',7,'Author1'),
(2,'Name2',89,'Author2'),
(3,'Name3',33,'Author3'),
(4,'Name4',55,'Author4'),
(5,'Name5',17,'Author5'),
(6,'Name6',2,'Author6')


--6 Price dəyəri 10-dan aşağı olan datarın pricini 10 etmək--
UPDATE Books
SET Price=10 WHERE Price<10

SELECT * FROM Books

--Price dəyəri 10-50 aralığndaki dataları select etmək--
SELECT * FROM Books
WHERE Price>10 AND Price<50

--7 Name və ya Author dəyərində a hərfi olan kitabları select etmək--
SELECT * FROM Books
WHERE Name LIKE '%a%' AND  Author LIKE '%a%'


--8 Price dəyəri 10 olan dataları silmek--
DELETE FROM Books WHERE Price=10





