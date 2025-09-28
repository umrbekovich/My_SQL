--task 1
/* Data

Definition: Data refers to raw facts, figures, or symbols that have not yet been processed to convey meaning.
It can be numbers, text, images, audio, or any other type of information.


Database

Definition: A database is an organized collection of data that is stored and accessed electronically.
It allows efficient retrieval, insertion, and management of data.


Relational database

Definition: A relational database is a type of database that stores data in structured tables with rows and columns.
It uses relationships between tables to organize and connect data, often using keys.


Table

Definition: A table is a set of data organized into rows and columns within a database.
Each table typically represents one type of entity (e.g., customers, products).
Rows (also called records): represent individual data entries.
Columns (also called fields): represent attributes of the data.*/

--task2

/* 5 key features of SQL:
1. Data Management and Storage

SQL Server provides a powerful engine to store, retrieve, and manage data in a structured and efficient way,
supporting large-scale databases and high-volume transactions.

2. Security Features

It offers robust security through:
Authentication (Windows and SQL Server)
Authorization (role-based access control)
Data encryption (TDE, Always Encrypted)
Auditing and threat detection

3. High Availability and Disaster Recovery (HADR)

SQL Server supports features like:
Always On Availability Groups
Failover Clustering
Log Shipping
Database Mirroring
These help ensure database remains available and recoverable even during failures.

4. Advanced Analytics and Business Intelligence (BI)

SQL Server includes tools like:
SQL Server Integration Services (SSIS) – for data integration
SQL Server Reporting Services (SSRS) – for report generation
SQL Server Analysis Services (SSAS) – for data analysis and OLAP

5. Support for T-SQL (Transact-SQL)

SQL Server uses T-SQL, an enhanced version of SQL that includes:
Procedural programming (loops, conditionals)
Error handling
Custom functions and stored procedures*/

--task3

/* 
1. Windows Authentication

Description:
In Windows Authentication, SQL Server uses the Windows operating system to validate user credentials.
It relies on the current Windows user’s identity and doesn't require a separate SQL Server login.

How it works: The SQL Server checks the credentials (username and password) of the logged-in Windows user. If they match, access is granted.

Benefits:

More secure, as it leverages Windows security policies (e.g., password policies).
Simplifies management as it doesn't require maintaining separate user accounts in SQL Server.

Example:
If you are logged into Windows with the user Alice, you don't need a separate login to access SQL Server as Alice.

2. SQL Server Authentication

Description:
In SQL Server Authentication, users provide a SQL Server-specific username and password to log in. 
This authentication method is independent of the Windows operating system.

How it works: The SQL Server checks the provided credentials (username and password) against those stored in SQL Server.

Benefits:

Allows connections from clients that are not part of the Windows domain.
Useful in mixed environments where non-Windows clients or applications need to access the database.

Example:

A user might log in with a username of user1 and password password123 directly in SQL Server.*/

--task4&5

create database SchoolDB
create table Students (ID int primary key, Name varchar(50), Age int)

--task6
/*SQL Server is the database engine that stores and manages the data.

SSMS is the tool used to manage and interact with SQL Server, making it easier to query, create, and manage databases.

SQL is the language you use to communicate with databases, including SQL Server.*/

--task7
/* SQL commands are categorized based on their functionality. The five main categories are:

DQL (Data Query Language)

DML (Data Manipulation Language)

DDL (Data Definition Language)

DCL (Data Control Language)

TCL (Transaction Control Language)


1. DQL (Data Query Language)

Definition:
DQL is used for retrieving data from the database. The primary command under DQL is SELECT.

Primary Command: SELECT

Key Characteristics:

Used to query the database and fetch data.

Does not modify data in the database; only reads it.

Returns result sets based on specified conditions.

Examples:

Basic SELECT Query*/

SELECT * FROM Students;

/*
This retrieves all columns and rows from the Students table.


2. DML (Data Manipulation Language)

Definition:
DML is used for modifying data within the database. The commands under DML allow you to insert, update, and delete records.

Key Commands: INSERT, UPDATE, DELETE

Key Characteristics:

INSERT: Adds new rows to a table.

UPDATE: Modifies existing rows.

DELETE: Removes rows from a table.

Examples:

INSERT (Adding new data):
*/
INSERT INTO Students
VALUES ('John Doe', 30, 'HR');

/*
This adds a new record to the Employees table.

UPDATE (Modifying existing data):
*/
UPDATE Students
SET Age = 31
WHERE Name = 'John Doe';
/*

This updates the Age of 'John Doe' in the Students table to 31.

DELETE (Removing data):
*/
DELETE FROM Students
WHERE Age < 25;
/*

This deletes records from the Employees table where the Age is less than 25.

3. DDL (Data Definition Language)

Definition:
DDL is used for defining and managing the structure of database objects like tables, indexes, and schemas.
It is responsible for creating, altering, and deleting database structures.

Key Commands: CREATE, ALTER, DROP, TRUNCATE

Key Characteristics:

CREATE: Creates new database objects (tables, views, indexes, etc.).

ALTER: Modifies existing database objects (e.g., adding/removing columns from a table).

DROP: Deletes database objects like tables, views, etc.

TRUNCATE: Deletes all rows from a table but does not remove the table itself.

Examples:

CREATE (Creating a table):
*/
CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(100),
  Age INT,
  Department VARCHAR(50)
);
/*

This creates a new table Employees with columns EmployeeID, Name, Age, and Department.

ALTER (Modifying a table structure):
*/
ALTER TABLE Employees
ADD Email VARCHAR(100);

/*
This adds a new column Email to the Employees table.

DROP (Deleting a table):
*/
DROP TABLE Employees;

/*
This deletes the entire Employees table and its data.

TRUNCATE (Removing all data from a table):
*/
TRUNCATE TABLE Employees;

/*
This removes all rows from the Employees table but leaves the table structure intact.

4. DCL (Data Control Language)

Definition:
DCL is used for controlling access to data in the database. It deals with permissions and access control.

Key Commands: GRANT, REVOKE

Key Characteristics:

GRANT: Provides specific privileges (permissions) to users or roles.

REVOKE: Removes privileges previously granted.

Examples:
*/
GRANT (Granting permissions):

GRANT SELECT, INSERT ON Employees TO User1;
/*

This grants User1 the ability to SELECT and INSERT data into the Employees table.
*/
REVOKE (Revoking permissions):

REVOKE INSERT ON Employees FROM User1;
/*

This removes the INSERT permission for User1 on the Employees table.

5. TCL (Transaction Control Language)

Definition:
TCL is used to manage transactions in the database. It ensures that a set of operations are executed in a consistent and reliable manner.

Key Commands: COMMIT, ROLLBACK, SAVEPOINT

Key Characteristics:

COMMIT: Saves all changes made during the current transaction.

ROLLBACK: Reverts all changes made during the current transaction (undo).

SAVEPOINT: Sets a point in a transaction to which you can later roll back.

Examples:

COMMIT (Saving changes):
*/
BEGIN TRANSACTION;

UPDATE Employees
SET Age = 35
WHERE Name = 'John Doe';

COMMIT;
/*

This commits the transaction, saving the update to the Employees table.

ROLLBACK (Reverting changes):
*/
BEGIN TRANSACTION;

UPDATE Employees
SET Age = 35
WHERE Name = 'John Doe';

ROLLBACK;

/*
This would undo the update operation above, rolling back to the state before the transaction.

SAVEPOINT (Setting a savepoint):
*/
BEGIN TRANSACTION;

SAVEPOINT before_update;

UPDATE Employees
SET Age = 40
WHERE Name = 'John Doe';

-- Later in the transaction, you can roll back to the savepoint
ROLLBACK TO SAVEPOINT before_update;

/*
This would undo changes made after the before_update savepoint, but leave other changes intact.*/


--task 8

insert into Students values
(1, 'Bobur', 18),
(2, 'Sardor', 17),
(3, 'Umid', 19)
-- task 9
/*
1 download the file AdventureWorksDW2022.bak 
2 go to 'my computer' and find the file AdventureWorksDW2022.bak from 'Downloads', copy it
3 paste th file here- C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup
4 go to SQL Server and refresh database.*/
