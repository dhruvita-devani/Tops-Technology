use classicmodels;
select * from customers;

select * from offices;
select * from orderdetails;
select * from employees;

select * from employees
where officeCode = "1" and jobTitle = "Sales Rep";

select priceEach * quantityOrdered as Total_ordervalues
from orderdetails;

select productCode, quantityOrdered * priceEach as Total_oderdvalue
from orderdetails
where quantityOrdered * priceEach > 1000;


----------------------------------------- double select query -------------------------------------

select * from products;

select * from productlines;

select * from productlines
where productLine in (select productLine from products where productName in ("1996 Moto guzzi 1100i" ,"1952 Alpine Renault 1300"));

select textDescription ,coalesce(htmlDescription , "missing value") from productlines ;

-------------------------------------------- 1st way create (cte) -----------------------------------
with emp as (
select officeCode , city from offices where city in ("NYC" , "Paris")
)
select firstName , lastName 
from employees
where officeCode in (select officeCode from  emp );
 
 -------------------------------------------- 2nd way create (cte) -----------------------------------

with emp as (
select officeCode , city from offices )
select firstName , lastName  
from employees
where officeCode in (select officeCode from  emp where city in ("NYC" , "Paris") );

 -------------------------------------------- 3rd way create (cte) -----------------------------------

WITH E_name AS (	
    SELECT firstName AS E_Name FROM employees
)
SELECT e.firstName, o.city
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode
WHERE o.city IN ('NYC', 'Paris');

----------------------------------------- Datetime functions --------------------------------------
select date_add(orderDate , interval 10 day)
from orders;

select * from orders;

select datediff(shippedDate , orderDate)
from orders;

select extract(year from  orderDate ) as year
from orders;

select monthname(orderDate)as monthname 
from orders;

select dayofmonth(orderDate) as dayofmonths
from orders;

select to_days(orderDate) from orders;
select * from orders;

select localtime();

select makedate(2025 , 3);

select date_sub(orderDate , interval 12 day) as preciousDate
from orders; 

select * from orders;

----------------------------------------- Store procedure --------------------------------------

call Customers_info(103);
call employee_info(1);

----------------------------------------- functoin --------------------------------------

select * from payments;

select customerNumber,  amount , Discount(amount) as discount 
from payments;






