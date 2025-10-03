--task1

create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))

--task2

insert into Employees values (1, 'Bekzod', 250.50,)
insert into Employees values 
(2, 'Shoxrux', 365.25),
(3, 'Nodir', 550.85)

--task3

update Employees
set Salary = 7000
where EmpID = 1


--task4

delete from Employees
where EmpID = 2


--task5

/* 
DELETE = Deletes specific rows from a table based on a WHERE clause. Rows can be recovered with ROLLBACK if within a transaction. Triggers are fired.

TRUNCATE = Removes all rows from a table quickly without logging individual row deletions. Cannot delete specific rows.
Usually cannot be rolled back (depends on DBMS). No triggers are fired.

DROP = Completely removes the entire table structure from the database, including all data, indexes, constraints, etc. Cannot be rolled back.
*/

--task6

alter table Employees
alter column Name varchar(100)

--task7

alter table Employees
add Department varchar(50) 


--task8

alter table Employees
alter column Salary float

--task9

create table Departments (DepartmentID int primary key, DepartmentName varchar(50))

--task10

truncate table Employees

--task11

insert into Departments
select 1, 'sales'
union all
select 2, 'management'
union all
select 3, 'marketing'
union all
select 4, 'logistics'
union all
select 5, 'finance'


--task12

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000

--task13

truncate table employees

--task14

alter table employees
drop column department 

--task15

exec sp_rename 'Employees', 'StaffMembers'

--task16
drop table Departments


--task17

create table Products (ProductID int primary key, ProductName varchar(50), Category varchar(50), Price decimal(10,2), Weight decimal(10,2))

--task18

ALTER TABLE Products
ADD CONSTRAINT chk_Price_Positive CHECK (Price > 0)


--task19

alter table Products
add StockQuantity int DEFAULT(50)


--task20

exec sp_rename 'Products.Category', 'ProductCategory', 'column' 

--task21

insert into Products values
(1, 'Wireless Headphones', 'Electronics', 299.99, 10, 50),
(2, 'Science Fiction Novel', 'Books', 15.50, 15,120),
(3, 'Denim Jacket', 'Clothing', 49.99, 30,75),
(4, 'Blender', 'Home & Kitchen', 89.99, 150, 40),
(5, 'Basketball', 'Sports', 120.00, 600, 60)


--task22

SELECT * INTO Products_Backup FROM Products
select * from Inventory

--task23

exec sp_rename 'Products', 'Inventory'

--task24

alter table Inventory
drop constraint chk_orice_positive
go
alter table Inventory
alter column Price float

--task25

CREATE TABLE Inventory_New (ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
ProductID int , ProductName varchar(50), productCategory varchar(50), Price float, Weight decimal(10,2))

INSERT INTO Inventory_New values
(1, 'Wireless Headphones', 'Electronics', 299.99, 10, 50),
(2, 'Science Fiction Novel', 'Books', 15.50, 15,120),
(3, 'Denim Jacket', 'Clothing', 49.99, 30,75),
(4, 'Blender', 'Home & Kitchen', 89.99, 150, 40),
(5, 'Basketball', 'Sports', 120.00, 600, 60)
SELECT (productid, productname, productCategory, price, weigh) FROM Inventory

DROP TABLE Inventory

EXEC sp_rename 'Inventory_New', 'Inventory'
