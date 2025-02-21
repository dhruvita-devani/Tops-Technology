CREATE database orderDB;
use orderdb;

-------------------------   CREATE   --------------------------------

create table Customers(
CustomerID int primary key,
CustomerName varchar(255),
ContactNumber bigint,
Address varchar(255),
City varchar(255),
PostalCode varchar(50),
Cuntry varchar(255),
Price float,
SalesQTY int,
DateOfPurchase datetime,
Product enum("CPU","Keyboard","Mouse")
);

-------------------------   DROP TABLE   --------------------------------

drop table Customers;

-------------------------   CREATE TABLE   --------------------------------

create table Customers(
CustomerID int primary key,
CustomerName varchar(255) not null,
ContactNumber bigint not null,
Address varchar(255) not null,
City varchar(255) not null,
PostalCode varchar(50) not null,
Cuntry varchar(255) not null ,
Price float not null,
SalesQTY int not null,
DateOfPurchase datetime not null,
Product enum("CPU","Keyboard","Mouse") not null
);


CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    CustomerID int,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    ContactNumber BIGINT NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(50),
    Country VARCHAR(255),
    HireDate DATETIME NOT NULL,
    Department VARCHAR(255) NOT NULL,
    Salary FLOAT NOT NULL,
    JobTitle VARCHAR(255) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID)
);


-------------------------   INSERT DATA IN TABLE  --------------------------------

INSERT INTO Customers (CustomerID, CustomerName, ContactNumber, Address, City, PostalCode, Cuntry, Price, SalesQTY, DateOfPurchase, Product)
VALUES
(1, 'John Doe', 9876543210, '123 Maple Street', 'New York', '10001', 'USA', 499.99, 2, '2023-12-25 14:30:00', 'CPU'),
(2, 'Jane Smith', 9123456789, '456 Oak Avenue', 'Los Angeles', '90001', 'USA', 29.99, 5, '2024-01-01 10:00:00', 'Mouse'),
(3, 'Alex Brown', 9012345678, '789 Pine Road', 'Chicago', '60601', 'USA', 79.99, 1, '2024-01-05 16:15:00', 'Keyboard'),
(4, 'Emily White', 9988776655, '321 Elm Street', 'Houston', '77001', 'USA', 499.99, 3, '2024-01-06 11:45:00', 'CPU'),
(5, 'Michael Green', 8877665544, '654 Cedar Drive', 'Phoenix', '85001', 'USA', 29.99, 4, '2024-01-10 09:20:00', 'Mouse'),
(6, 'Liam Johnson', 9876541230, '987 Birch Street', 'Toronto', 'M4B1B3', 'Canada', 299.99, 1, '2024-01-11 14:00:00', 'Keyboard'),
(7, 'Sophia Williams', 9765432109, '432 Spruce Avenue', 'Vancouver', 'V6B2W1', 'Canada', 149.99, 3, '2024-01-15 10:30:00', 'Mouse'),
(8, 'Oliver Jones', 9654321987, '159 Pine Crescent', 'London', 'EC1A1BB', 'UK', 549.99, 2, '2024-01-18 16:45:00', 'CPU'),
(9, 'Amelia Taylor', 9543219876, '753 Willow Lane', 'Birmingham', 'B15 1AW', 'UK', 79.99, 4, '2024-01-20 13:15:00', 'Keyboard'),
(10, 'Lucas Brown', 9432198765, '246 Maple Avenue', 'Sydney', '2000', 'Australia', 399.99, 1, '2024-01-25 11:10:00', 'Mouse'),
(11, 'Mia Davis', 9321987654, '135 Oak Boulevard', 'Melbourne', '3000', 'Australia', 499.99, 2, '2024-01-28 15:30:00', 'CPU'),
(12, 'Ethan Wilson', 9219876543, '468 Cedar Street', 'Berlin', '10115', 'Germany', 59.99, 5, '2024-02-01 09:50:00', 'Mouse'),
(13, 'Isabella Martinez', 9109876542, '789 Elm Road', 'Munich', '80331', 'Germany', 299.99, 3, '2024-02-03 12:25:00', 'Keyboard'),
(14, 'James Anderson', 9098765432, '321 Fir Path', 'Paris', '75001', 'France', 649.99, 2, '2024-02-07 14:10:00', 'CPU'),
(15, 'Emily Clark', 8987654321, '654 Walnut Avenue', 'Lyon', '69001', 'France', 89.99, 4, '2024-02-10 10:20:00', 'Mouse');

select * from customers;
INSERT INTO Employee (EmployeeID,CustomerID, FirstName, LastName, ContactNumber, Email, Address, City, PostalCode, Country, HireDate, Department, Salary, JobTitle) 
VALUES
(1, 1,'Raj', 'Sharma', 9876543210, 'raj.sharma@example.com', '123 MG Road', 'Mumbai', '400001', 'India', '2020-01-15', 'IT', 85000.00, 'Software Engineer'),
(2, 2,'Priya', 'Verma', 9876543211, 'priya.verma@example.com', '456 Park Street', 'Delhi', '110001', 'India', '2019-11-20', 'HR', 75000.00, 'HR Manager'),
(3, 3,'Amit', 'Kumar', 9876543212, 'amit.kumar@example.com', '789 Mall Road', 'Bangalore', '560001', 'India', '2018-07-10', 'Finance', 95000.00, 'Financial Analyst'),
(4, 4,'Anjali', 'Singh', 9876543213, 'anjali.singh@example.com', '321 Nehru Place', 'Hyderabad', '500001', 'India', '2021-03-22', 'Marketing', 65000.00, 'Marketing Specialist'),
(5, 5,'Ravi', 'Reddy', 9876543214, 'ravi.reddy@example.com', '654 Jubilee Hills', 'Chennai', '600001', 'India', '2022-09-18', 'IT', 87000.00, 'System Administrator'),
(6, 6,'Neha', 'Joshi', 9876543215, 'neha.joshi@example.com', '987 Gachibowli', 'Pune', '411001', 'India', '2023-01-05', 'Operations', 78000.00, 'Operations Manager'),
(7, 7,'Manoj', 'Patel', 9876543216, 'manoj.patel@example.com', '159 Satellite Road', 'Ahmedabad', '380001', 'India', '2017-06-30', 'Legal', 88000.00, 'Legal Advisor'),
(8, 8,'Sneha', 'Nair', 9876543217, 'sneha.nair@example.com', '753 Brigade Road', 'Kochi', '682001', 'India', '2020-04-25', 'IT', 92000.00, 'Data Scientist'),
(9, 9,'Karan', 'Mehta', 9876543218, 'karan.mehta@example.com', '852 MG Road', 'Jaipur', '302001', 'India', '2019-12-15', 'Finance', 67000.00, 'Accountant'),
(10, 10,'Pooja', 'Kapoor', 9876543219, 'pooja.kapoor@example.com', '951 Hauz Khas', 'Lucknow', '226001', 'India', '2022-02-10', 'Marketing', 62000.00, 'SEO Specialist'),
(11, 11,'Arjun', 'Bhatia', 9876543220, 'arjun.bhatia@example.com', '357 Hitech City', 'Gurgaon', '122001', 'India', '2021-08-30', 'IT', 98000.00, 'DevOps Engineer'),
(12, 12,'Ritika', 'Chopra', 9876543221, 'ritika.chopra@example.com', '753 Koramangala', 'Indore', '452001', 'India', '2020-11-11', 'HR', 72000.00, 'Recruiter'),
(13, 13,'Sanjay', 'Yadav', 9876543222, 'sanjay.yadav@example.com', '159 Banjara Hills', 'Nagpur', '440001', 'India', '2018-05-20', 'Operations', 74000.00, 'Supply Chain Analyst'),
(14, 14,'Ishita', 'Malhotra', 9876543223, 'ishita.malhotra@example.com', '654 Vasant Vihar', 'Bhopal', '462001', 'India', '2023-07-07', 'Legal', 87000.00, 'Corporate Lawyer'),
(15, 15,'Abhishek', 'Gupta', 9876543224, 'abhishek.gupta@example.com', '852 Civil Lines', 'Patna', '800001', 'India', '2017-09-15', 'Finance', 89000.00, 'Investment Analyst');


-------------------------   SELECT   --------------------------------

select * from Customers; 

select CustomerName 
from Customers
where Product = "CPU";

-------------------------   UPDATE   --------------------------------
update Customers
set City = "Surat", Address = "Jakatnaka"
where CustomerID = 4;

-------------------------   DELETE   -------------------------------
DELETE from customers 
where CustomerID = 10;

-------------------------   Aerithmatic opration   -------------------------------

select price * 10  as price_Multi
from customers;

select price * SalesQTY as Total_sales
from customers;

-------------------------   AND OR NOT opration   -------------------------------

select * from customers
where Product  and price > 100;

select * from customers
where not  City = ("New York");

drop table employee;




select * from Employee;

drop table Employee;

-------------------------------------- UNION, UNION ALL , INTERSECT, EXCEPT ------------------------------------------
select CustomerName  from customers
union select FirstName from Employee;

select CustomerName  from customers
union all select FirstName from employee; 

select CustomerName  from customers
intersect select FirstName from employee; 

select CustomerName  from customers
except select FirstName from employee; 

---------------------------- IN, NOT IN , BETWEEN , LIKE OPERATOR , IS NULL OPERATOR
select * from customers
where City  in ("New York" , "London");

select * from customers
where City  not in ("New York" , "London");

select * from employee 
where salary between  50000 and 80000s;

select * from employee 
where FirstName is null;

select * from employee 
where City like "D%";


------------------------------ GROUP by count , sum , avg , having , min , max   ------------------------------------
select Department, count("Department") as "count_department"
from employee group by  Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Department;

SELECT Product, AVG(Price) AS AvgPrice
FROM customers
GROUP BY Product;

select * from Employee;

-------------------------------------- having ----------------------------------------


SELECT Product, sum(SalesQTY) AS sumQty
FROM customers
GROUP BY Product
having sumQty > 4;

-----------------------------------  distinct , limit , offset , order by (asc , desc)-----------------------------

select distinct city 
from customers
limit 8
offset 4;

select * from customers;

select * from employee;

select FirstName  , avg(Salary) as avg_Sal
from employee
group by FirstName
order by avg_Sal desc
limit 3;

select Department  , avg(Salary) as avg_Sal
from employee
group by Department
order by avg_Sal desc
limit 5;

select * from employee;

drop table employee;


------------------------ Joins (inner, right , left, full)  ------------------------

select customers.CustomerName, employee.FirstName
from employee inner join customers on employee.EmployeeID = customers.CustomerID;

select * from  customers;
select * from employee;

select customers.city,employee.Department
from employee left join customers on employee.EmployeeID = customers.CustomerID;


----------------------------------------- subquery , cte(with) ----------------------------------------
select * from employee
where productLine in (select productLine from product where productName in ("1996 Moto guzzi 1100i" ,"1952 Alpine Renault 1300") );

 select * from employee
 where  CustomerID  in (select  CustomerID from customers where CustomerName in ("John Doe","Jane Smith"));
 
 select * from customers;
 ---------------------------------- cte (with) ---------------------------------------------
 with avg_sal as (
 select avg(Salary) as Avg_Sal from employee
 )
 select FirstName , LastName , Salary
 from employee
 where Salary > (select Avg_Sal from avg_sal );
 
 select * from customers;
 -------------------------- view icon new table  create --------------------------------------
select * from nyc_city_customer;
select * from melbourne_city_customer;
select * from singapore_city_customer;

------------------------------- Trigger ---------------------------------------------

create database sample;

use sample;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    marks decimal (5,2)
);

INSERT INTO students (name, marks) VALUES 
('Amit Kumar', 85.50),
('Priya Sharma', 90.25),
('Rohan Verma', 78.75),
('Neha Gupta', 88.40);

drop table students;

create table update_marks(
    id INT PRIMARY KEY AUTO_INCREMENT,
    sid int ,
    old_marks decimal(5,2),
    new_marks decimal(5,2),
    foreign key (sid) references students(id)
);

create table archive_sudents(
id INT PRIMARY KEY AUTO_INCREMENT,
    aid int ,
	name VARCHAR(100) NOT NULL,
    old_marks decimal(5,2)
);
---------------------------- create trigger--------------------
--------------------------insert old new marks value into the update marks table

delimiter $$
create trigger after_marks_update
after update on students
for each row
begin
insert into update_marks (sid , old_marks,new_marks)
values(old.id,old.marks,new.marks);
end $$ 
delimiter ;

update students set marks = 99.75
where id = 2;

update students set marks = 75.33
where id = 1;





select * from students;
select * from update_marks;


delimiter $$
create trigger archive_student_before
before delete on students
for each row
begin
insert into archive_sudents (aid , name , old_marks)
values(old.id,old.name,old.marks);
end $$ 
delimiter ;

delete from students where id = 3;

select * from archive_sudents;

drop trigger archive_student;


 ---------------------------- create instead trigger--------------------
 
 DELIMITER $$

CREATE TRIGGER my_trigger
instead OF INSERT ON my_view
FOR EACH ROW
BEGIN
    INSERT INTO my_table (id, name) VALUES (NEW.id, NEW.name);
END$$

DELIMITER ; 




 
 
 
 



 


































