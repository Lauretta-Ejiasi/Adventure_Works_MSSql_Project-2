-- Selecting all the columns within a table
select *
from HumanResources.Department;
 
-- select specific columns within a table
select departmentID,
Name ,
GroupName 
from HumanResources.Department
 
-- Using Alias
select departmentID,
Name, 
GroupName as "Department"
from HumanResources.Department
 
-- Removing Duplicates
select Color
from Production.Product
 
-- Using Select Distinct
select distinct Color
from Production.Product
where color is not null
 
-- OrderBy Clause Example
select *
from Sales.SalesOrderDetail
order by OrderQty desc;
 
-- Multiple columns in order by clause
select 
SalesOrderID,
OrderQty,
UnitPrice,
ModifiedDate
from sales.SalesOrderDetail
order by SalesOrderID asc, 
OrderQty desc
 
-- Limiting Sorting Result
select top 1 * 
from Production.Product
 
Select top 10 Name as "ProductName",
ListPrice
from Production.Product
order by ListPrice desc
 
-- Between Example
select top 3 *
from Production.TransactionHistory
 
select Quantity
from Production.TransactionHistory
where Quantity between 100 and 500
 
-- Not Between
select 
TransactionID,
Quantity,
ProductID
from Production.TransactionHistory
where Quantity not between 100 and 500
And ProductID in (784,794)

-- Joins ( New table)
 
create schema hr; -- create a new schema
GO
 
-- Create two tables named Canditates and employees in the hr schema:
create table hr.candidates(
    id int primary key identity,
    fullname varchar(100) not null
);
 
Create table hr.employees(
    id int primary key identity,
    fullname varchar(100) not null
);
 
-- Insert some rows into the candidates and employees tables:
Insert into 
    hr.candidates(fullname)
values
    ('john Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('jane Doe');
 
 
Insert into
    hr.employees(fullname)
Values
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');
