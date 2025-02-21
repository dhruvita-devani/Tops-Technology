                                         -- Module-4 : SQL - Introduction and Getting started with sql

                                                           -- Assessment 1: 

-- Sample Table -Worker

CREATE DATABASE worker_DB;

USE worker_DB;

CREATE TABLE worker(
Worker_Id INT PRIMARY KEY NOT NULL,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Salary FLOAT NOT NULL,
Joinning_Date DATETIME NOT NULL,
DEPARTMENT ENUM("HR","Admin","Account") NOT NULL
);

INSERT INTO worker(Worker_Id,First_Name,Last_Name,Salary,Joinning_Date,DEPARTMENT)
VALUES 

("1", "Monika", "Arora", "100000", '2014-02-20 09:00:00', "HR"),
("2", "Niharika", "Verama", "80000", '2014-06-11 09:00:00', "Admin"),
("3", "Vishal", "Singhal", "300000", '2014-02-20 09:00:00', "HR"),
("4", "Amitabh", "Singh", "500000", '2014-02-20 09:00:00', "Admin"),
("5", "Vivek", "Bhati", "500000", '2014-06-11 09:00:00', "Admin"),
("6", "Vipul", "Diwan", "200000", '2014-06-11 09:00:00', "Account"),
("7", "Satish", "Kumar", "75000", '2014-01-20 00:00:00', "Account"),
("8", "Geetika", "Chauahan", "90000", '2014-04-11 00:00:00', "Admin");


-- QUESTION : 1 : Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 

SELECT * FROM worker
ORDER BY First_Name ASC ,DEPARTMENT DESC;

-- QUESTION : 2 : Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.

SELECT * FROM worker
WHERE  First_Name IN ("Vipul","Satish");

-- QUESTION : 3 :  Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
SELECT * FROM worker
WHERE First_Name LIKE '_____h' 
AND 
length(First_Name)=6;

-- QUESTION : 4 :  Write an SQL query to print details of the Workers whose SALARY lies between 50000 and 300000.

SELECT * FROM worker 
WHERE Salary BETWEEN 50000 and 150000;

-- QUESTION : 5 :   Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

SELECT First_Name,Last_Name ,COUNT(*) AS duplicate_count
FROM worker 
GROUP BY First_Name,Last_Name
HAVING COUNT(*)>1;

-- QUESTION : 6 :   Write an SQL query to show the top 6 records of a table.
SELECT * FROM worker
LIMIT 6;

-- QUESTION : 7 :   Write an SQL query to fetch the departments that have less than five people in them. 

SELECT DEPARTMENT,COUNT(*) 
FROM worker
GROUP BY DEPARTMENT
HAVING COUNT(*)<5;

-- QUESTION : 8 :    Write an SQL query to show all departments along with the number of people in there.
 
SELECT DEPARTMENT,COUNT(*) AS Worker_Count
FROM worker ;

-- QUESTION : 9 :    Write an SQL query to print the name of employees having the highest salary in each department. 

select First_Name, DEPARTMENT, Salary
from worker
where (DEPARTMENT, salary) in (select  DEPARTMENT, max(salary)
	from worker
	group by DEPARTMENT)
order by Salary desc;



                                                      -- ASSESMENT : 2
                                                      
-- Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 

CREATE DATABASE school;

USE school;

CREATE TABLE Student(
StdID INT NOT NULL,
Std_Name VARCHAR(45) NOT NULL,
Sex VARCHAR(10) NOT NULL,
Percentage FLOAT NOT NULL,
Class INT NOT NULL,
Sec VARCHAR(2) NOT NULL,
Stream VARCHAR(10) NOT NULL,
BOB DATE
);

INSERT INTO Student (StdID, Std_Name, Sex, Percentage, Class, Sec, Stream, BOB)
VALUES
("1", "Surekha Joshi", "Female", "82", "12", "A", "Science", "1998-03-08"),
("2", "Maahi Agarwal", "Female", "56", "11", "C", "Commerce", "2008-11-23"),
("3", "Sanam Verma", "Male", "56", "11", "C", "Commerce", "2006-06-29"),
("4", "Ronit Kumar", "Male", "63", "11", "C", "Commerce", "1997-05-11"),
("5", "Dipesh Pulkit", "Male", "78", "11", "B", "Science", "2003-09-14"),
("6", "Jahanvi Puri", "Female", "60", "11", "B", "Commerce", "2008-11-07"),
("7", "Sanam Kumar", "Male", "23", "12", "F", "Commerce", "1998-03-08"),
("8", "Sahil Saras", "Male", "56", "11", "C", "Commerce", "2008-11-07"),
("9", "Akshra Agarwal", "Female", "72", "12", "B", "Commerce", "1996-10-01"),
("10", "Stuti Mishra", "Female", "39", "11", "F", "Science", "2008-11-23"),
("11", "Harsh Agarwal", "Male", "42", "11", "C", "Science", "1998-03-08"),
("12", "Nikunj Agarwal", "Male", "49", "12", "C", "Commerce", "1998-06-28"),
("13", "Akriti Saxena", "Female", "89", "12", "A", "Science", "2008-11-23"),
("14", "Tani Rastogi", "Female", "82", "12", "A", "Science", "2008-11-23");


-- QUESTION : 1 :    To display all the records form STUDENT table. 

SELECT * FROM Student;

-- QUESTION : 2 :  To display any name and date of birth from the table STUDENT

SELECT Std_Name, BOB FROM Student 
WHERE Std_Name = 'Surekha Joshi';

-- QUESTION : 3 :  To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student WHERE percentage >= 80;

-- QUESTION:  4. To display student name, stream and percentage where percentage of student is more than 80
SELECT Std_Name, Stream
FROM student WHERE percentage > 80; 

-- QUESTION :  5. To display all records of science students whose percentage is more than 75 form student table. 
SELECT * 
FROM student
WHERE Stream = "Science" AND percentage>75;

