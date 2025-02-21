create database MarketCo;

use MarketCo;

create table company(
companyid  int Primary key not null,
company_name varchar(45) not null,
street varchar(45) not null,
city varchar(45) not null,
state varchar(45) not null,
zip varchar(10) not null);

create table contact(
contact_id int  not null,
companyid int not null,
Firstname varchar(45) not null,
Lastname varchar(45),
street varchar(45) not null,
city varchar(45) not null,
state varchar(5) not null,
zip varchar(10) not null,
Ismain boolean,
Email varchar(45),
Phone varchar(12) not null,
PRIMARY KEY (contact_id),
FOREIGN KEY (companyid) REFERENCES company(companyid));

create table contactemployee(
ContactEmployee_id int not null,
contact_id int not null,
Employee_id int not null,
Contact_date date,
Descriptions varchar(100),
PRIMARY KEY (Employee_id),
FOREIGN KEY (contact_id) REFERENCES contact(contact_id));

create table employee(
Employee_id int not null,
Firstname varchar(45) not null,
Lastname varchar(45),
salary float ,
Hiredate date,
JobTitle varchar(45),
Email varchar(45),
Phone varchar(12) not null,
FOREIGN KEY (Employee_id) REFERENCES contactemployee(Employee_id));

INSERT INTO company (companyid, company_name, street, city, state, zip) 
VALUES
(1, 'Urban Outfitters, Inc.', '123 Market St', 'Philadelphia', 'PA', '19103'),
(2, 'Toll Brothers', '250 Gibraltar Rd', 'Horsham', 'PA', '19044'),
(3, 'Acme Corp.', '1000 Industrial Blvd', 'Chicago', 'IL', '60601'),
(4, 'Tech Solutions', '456 Silicon Ave', 'San Francisco', 'CA', '94103'),
(5, 'Global Enterprises', '789 Global Rd', 'New York', 'NY', '10001');

INSERT INTO contact (contact_id, companyid, Firstname, Lastname, street, city, state, zip, Ismain, Email, Phone)
VALUES
(1, 1, 'Lesley', 'Bland', '123 Market St', 'Philadelphia', 'PA', '19103', TRUE, 'lesley.bland@urbanoutfitters.com', '215-555-1234'),
(2, 2, 'Dianne', 'Connor', '250 Gibraltar Rd', 'Horsham', 'PA', '19044', TRUE, 'dianne.connor@tollbrothers.com', '215-555-5678'),
(3, 3, 'Jack', 'Lee', '1000 Industrial Blvd', 'Chicago', 'IL', '60601', TRUE, 'jack.lee@acmecorp.com', '312-555-8765'),
(4, 4, 'Sarah', 'Kim', '456 Silicon Ave', 'San Francisco', 'CA', '94103', FALSE, 'sarah.kim@techsolutions.com', '415-555-4321'),
(5, 5, 'John', 'Doe', '789 Global Rd', 'New York', 'NY', '10001', FALSE, 'john.doe@globalent.com', '212-555-9876');

INSERT INTO contactemployee (ContactEmployee_id, contact_id, Employee_id, Contact_date, Descriptions)
VALUES
(1, 1, 101, '2025-02-10', 'Initial meeting with Lesley Bland for Urban Outfitters'),
(2, 2, 102, '2025-02-12', 'Follow-up with Dianne Connor from Toll Brothers'),
(3, 3, 103, '2025-02-15', 'Meeting with Jack Lee at Acme Corp.'),
(4, 4, 104, '2025-02-18', 'Conference call with Sarah Kim from Tech Solutions'),
(5, 5, 105, '2025-02-20', 'Contract negotiation with John Doe from Global Enterprises');

INSERT INTO employee (Employee_id, Firstname, Lastname, salary, Hiredate, JobTitle, Email, Phone)
VALUES
(101, 'Lesley', 'Bland', 60000, '2020-01-10', 'Sales Manager', 'lesley.bland@urbanoutfitters.com', '215-555-1234'),
(102, 'Dianne', 'Connor', 70000, '2018-03-12', 'Project Manager', 'dianne.connor@tollbrothers.com', '215-555-5678'),
(103, 'Jack', 'Lee', 80000, '2017-05-20', 'Lead Engineer', 'jack.lee@acmecorp.com', '312-555-8765'),
(104, 'Sarah', 'Kim', 65000, '2019-07-15', 'Product Manager', 'sarah.kim@techsolutions.com', '415-555-4321'),
(105, 'John', 'Doe', 75000, '2016-09-05', 'Account Manager', 'john.doe@globalent.com', '212-555-9876');



-- QUESTION : 4 : In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 


UPDATE contact
SET Phone = '215-555-8800'
WHERE Firstname = 'Lesley' AND Lastname = 'Bland';
 

-- QUESTION : 5 : In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” .

UPDATE company
SET company_name = "Urban Outfitters"
WHERE companyid = "1";

-- QUESTION : 6 :In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack Lee (one statement).

SELECT * FROM contactemployee;

DELETE FROM employee WHERE Employee_id = 102;

DELETE FROM contactemployee WHERE ContactEmployee_id = 2 AND Employee_id = 102;


-- QUESTION : 7 :Write the SQL SELECT query that displays the names of the employees that have contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well. 

SELECT e.Firstname, e.Lastname
FROM employee e
JOIN contactemployee ce ON e.Employee_id = ce.Employee_id
JOIN contact c ON ce.contact_id = c.contact_id
JOIN company comp ON c.companyid = comp.companyid
WHERE comp.company_name = 'Toll Brothers';



/*QUESTION : 8 :What is the significance of “%” and “_” operators in the LIKE statement? 

In MySQL, the LIKE operator is used in WHERE clauses for pattern matching in string searches.

% (Percent Sign): Represents zero, one, or multiple characters.
Example:

	SELECT * FROM employees WHERE name LIKE 'J%';
	→ Finds all names starting with "J", like John, Jack, James, etc.

_ (Underscore): Represents exactly one character.
Example:
	
    SELECT * FROM employees WHERE name LIKE '_a%';
	→ Finds names where the second letter is "a", like Mark, Jack, etc.

*/

/*QUESTION : 9 :  Normalization in the context of databases:

Normalization is a process of organizing data in a database to:

Reduce data redundancy
Improve data integrity
Enhance query performance

Normal Forms (NF):

1NF (First Normal Form): No duplicate rows; each column has atomic values (no multiple values in one column).
2NF (Second Normal Form): 1NF + No partial dependency (all non-key attributes must depend on the whole primary key).
3NF (Third Normal Form): 2NF + No transitive dependency (attributes should depend only on the primary key).
BCNF (Boyce-Codd Normal Form): 3NF + No overlapping candidate keys.

*/

/*QUESTIOn : 10 What does a JOIN in MySQL mean?:

A JOIN in MySQL is used to combine data from multiple tables based on a related column.

Common types of JOINs:

INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN

*/

/*QUESTION :11:  DDL, DCL, and DML in MySQL:

DDL (Data Definition Language) → Defines the structure of a database

Commands: CREATE, ALTER, DROP, TRUNCATE
Example:

	CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(50));

DML (Data Manipulation Language) → Modifies data inside tables

Commands: INSERT, UPDATE, DELETE, SELECT
Example:

	INSERT INTO employees (id, name) VALUES (1, 'John Doe');

DCL (Data Control Language) → Controls access to data

Commands: GRANT, REVOKE
Example:

	GRANT SELECT ON employees TO 'user1'@'localhost';
    
*/    

/*QUESTION : 12: Role of the MySQL JOIN clause and common types of joins:

The JOIN clause in MySQL helps retrieve data from multiple related tables by matching columns.

Common Types of Joins:

INNER JOIN – Returns only matching records from both tables.

	SELECT employees.name, company.company_name
	FROM employees
	INNER JOIN company ON employees.companyid = company.companyid;

LEFT JOIN (LEFT OUTER JOIN) – Returns all records from the left table and matching records from the right table.

	SELECT employees.name, company.company_name
	FROM employees
	LEFT JOIN company ON employees.companyid = company.companyid;

RIGHT JOIN (RIGHT OUTER JOIN) – Returns all records from the right table and matching records from the left table.

	SELECT employees.name, company.company_name
	FROM employees
	RIGHT JOIN company ON employees.companyid = company.companyid;

FULL JOIN (FULL OUTER JOIN) – Returns all records when there is a match in either left or right table. (Not directly supported in MySQL, but can be achieved using UNION)

	SELECT employees.name, company.company_name
	FROM employees
	LEFT JOIN company ON employees.companyid = company.companyid
	UNION
	SELECT employees.name, company.company_name
	FROM employees
RIGHT JOIN company ON employees.companyid = company.companyid;


*/

