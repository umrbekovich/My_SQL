--task1

/*
BULK INSERT is a Transact-SQL (T-SQL) command in SQL Server used to import large volumes of data from a data file (like a CSV or TXT file) directly into a SQL Server table efficiently and quickly.

Purpose of BULK INSERT:

High Performance Data Import:
Used to load large datasets from external sources into SQL Server with minimal overhead.
Much faster than inserting rows one-by-one using INSERT INTO.

ETL Processes (Extract, Transform, Load):
Often used in data warehousing or data migration processes.
Enables fast population of staging tables.

Automation and Integration:
Suitable for automated jobs where daily or periodic imports are needed from files created by external systems.

Common Use Cases:

Loading CSV files into a database table.
Importing log files or raw data from external systems.
Data migration from legacy systems into SQL Server.
*/

--task2


/*

CSV (Comma-Separated Values)

Description: Text files where fields are separated by commas.
Usage: Commonly used for exporting/importing data between systems.
Import Methods: BULK INSERT, bcp, OPENROWSET, SSIS.

2. TXT (Plain Text Files)

Description: Text files with fields separated by custom delimiters (e.g., tab, pipe |, semicolon).
Usage: Used when data requires non-standard delimiters.
Import Methods: BULK INSERT, bcp, OPENROWSET, SSIS.

3. XML (Extensible Markup Language)

Description: Structured text format used for representing hierarchical data.
Usage: Used for complex data structures or web data exchange.
Import Methods: OPENXML, XML data type methods, SSIS.

4. JSON (JavaScript Object Notation)

Description: Lightweight format for storing and transporting data, often used in web applications.
Usage: Importing API data or web-based data structures.
Import Methods: OPENJSON, JSON_VALUE(), SSIS, custom parsing with T-SQL.
*/


--task3

DROP TABLE products
create table Products (ProductID int primary key, ProductName varchar(50), Price decimal (10,2))

--task4

insert into Products values
(1, 'headphone', 15.00),
(2, 'smartphone', 250.00),
(3, 'macbook', 1500.00)



--task5
/*
In SQL (including SQL Server), NULL and NOT NULL are used to define whether a column can store missing or unknown values.

NULL

Meaning: The column can store null values.
NULL represents: An unknown, missing, or inapplicable value — not zero or an empty string.
Example Use Case: A MiddleName column in a table may be NULL if some people don't have a middle name

NOT NULL

Meaning: The column must have a value.
You cannot insert or update a row with a NULL in this column.
Use this when the data is mandatory.
*/


--task6

alter table products
add constraint UQ_ProductName unique (ProductName)

--task7

create table Products1 (ProductID int primary key, ProductName varchar(50), Price decimal (10,2)) -- this query creates new table in database with tne name Products

--task8

alter table products
add CategoryID int

--task9

create table Categories (CategoryID int primary key, CategoryName varchar(50) unique)
insert into Categories values (1, 'tech'), (2, 'books'), (3, 'grocery')
-- task10
/*
The IDENTITY column in SQL Server is used to auto-generate unique numeric values for each row inserted into a table — typically used for primary keys.
Why Use IDENTITY Columns?
To create auto-generated keys without writing extra logic
Ensures each row has a unique identifier
Simplifies application development and data modeling
*/

--task11

bulk insert products
from 'C:\Users\USER\Desktop\products.txt'
with
(
firstrow = 1,
fieldterminator = ',',
ROWTERMINATOR = '\n'
)

--task12

alter table products
add constraint fk_products
foreign key (CategoryID) references Categories(categoryID)

--task13
/*

A PRIMARY KEY is used to uniquely identify each record in a table.
It does not allow NULL values and ensures that all values in the column (or columns) it applies to are unique and not null.
Every table can have only one PRIMARY KEY, and it is commonly used for fields like ID, CustomerID, or ProductID.

A UNIQUE KEY also ensures that all values in the specified column(s) are unique, but it does allow NULL values.
Unlike the PRIMARY KEY, you can have multiple UNIQUE constraints in a table. UNIQUE keys are typically used for fields like Email or Username to prevent duplicates, while still allowing the field to be optional.
*/

--task14

alter table products
add constraint chk_price
check ( Price>0)

--task15
alter table Products
add stock int not null default 0


--task16

select isnull (price, 0) as price from Products

--task 17

/*
A FOREIGN KEY constraint is used to enforce referential integrity between two tables in a relational database.
It ensures that the value in a column (or a set of columns) in one table matches a value in a primary key or unique key column in another table.
In simpler terms:
It links two tables together.
It makes sure that you can’t insert invalid references in the child table.
It prevents orphan records (records that reference non-existent rows in the parent table).
It helps maintain consistent and reliable relationships between tables.
*/

--task18

create table Customers (CustomerID INT identity, Name varchar(50), Age int check (Age>=18))

--task19

create table Department (DepartmentID int identity(100,10), DepartmentName varchar(50))

--task20
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
)

--task21
/*

ISNULL Function

Purpose: Replaces a NULL value with a specified replacement.

Syntax (SQL Server):

ISNULL(expression, replacement_value)


How it works:
Returns the value of expression if it is not NULL, otherwise returns replacement_value.

Example:

SELECT ISNULL(Price, 0) AS PriceValue FROM Products;


If Price is NULL, it returns 0.

Limitations:

Only works with two arguments.

Is specific to SQL Server (some other databases have similar but different functions).

The return type is determined based on the first argument.

COALESCE Function

Purpose: Returns the first non-NULL value from a list of expressions.

Syntax:

COALESCE(expression1, expression2, ..., expressionN)


How it works:
Checks each expression in order and returns the first that is not NULL. If all are NULL, it returns NULL.

Example:

SELECT COALESCE(DiscountPrice, SalePrice, RegularPrice, 0) AS EffectivePrice FROM Products;


This returns the first non-NULL price in the list or 0 if all are NULL.

Advantages:

Works with multiple arguments.

Part of the SQL standard and supported by most database systems.

More flexible than ISNULL.
*/

--task22

create table Employees (EmpId int identity primary key, name varchar(50), email varchar(100) unique)

--task23


CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers1(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
