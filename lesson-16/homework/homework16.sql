
CREATE TABLE Numbers1(Number INT)

INSERT INTO Numbers1 VALUES (5),(9),(8),(6),(7)

CREATE TABLE FindSameCharacters
(
     Id INT
    ,Vals VARCHAR(10)
)
 
INSERT INTO FindSameCharacters VALUES
(1,'aa'),
(2,'cccc'),
(3,'abc'),
(4,'aabc'),
(5,NULL),
(6,'a'),
(7,'zzz'),
(8,'abc')



CREATE TABLE RemoveDuplicateIntsFromNames
(
      PawanName INT
    , Pawan_slug_name VARCHAR(1000)
)
 
 
INSERT INTO RemoveDuplicateIntsFromNames VALUES
(1,  'PawanA-111'  ),
(2, 'PawanB-123'   ),
(3, 'PawanB-32'    ),
(4, 'PawanC-4444' ),
(5, 'PawanD-3'  )





CREATE TABLE Example
(
Id       INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);


INSERT INTO Example VALUES('123456789'),('abcdefghi');


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'Garc?a', 77000.00),
(10, 1, 'William', 'Mart?nez', 69000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);
INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
-- January 2025
(1, 1, 1, 1550.00, '2025-01-02'),
(2, 2, 2, 2050.00, '2025-01-04'),
(3, 3, 3, 1250.00, '2025-01-06'),
(4, 4, 4, 1850.00, '2025-01-08'),
(5, 5, 5, 2250.00, '2025-01-10'),
(6, 6, 6, 1450.00, '2025-01-12'),
(7, 7, 1, 2550.00, '2025-01-14'),
(8, 8, 2, 1750.00, '2025-01-16'),
(9, 9, 3, 1650.00, '2025-01-18'),
(10, 10, 4, 1950.00, '2025-01-20'),
(11, 1, 5, 2150.00, '2025-02-01'),
(12, 2, 6, 1350.00, '2025-02-03'),
(13, 3, 1, 2050.00, '2025-02-05'),
(14, 4, 2, 1850.00, '2025-02-07'),
(15, 5, 3, 1550.00, '2025-02-09'),
(16, 6, 4, 2250.00, '2025-02-11'),
(17, 7, 5, 1750.00, '2025-02-13'),
(18, 8, 6, 1650.00, '2025-02-15'),
(19, 9, 1, 2550.00, '2025-02-17'),
(20, 10, 2, 1850.00, '2025-02-19'),
(21, 1, 3, 1450.00, '2025-03-02'),
(22, 2, 4, 1950.00, '2025-03-05'),
(23, 3, 5, 2150.00, '2025-03-08'),
(24, 4, 6, 1700.00, '2025-03-11'),
(25, 5, 1, 1600.00, '2025-03-14'),
(26, 6, 2, 2050.00, '2025-03-17'),
(27, 7, 3, 2250.00, '2025-03-20'),
(28, 8, 4, 1350.00, '2025-03-23'),
(29, 9, 5, 2550.00, '2025-03-26'),
(30, 10, 6, 1850.00, '2025-03-29'),
(31, 1, 1, 2150.00, '2025-04-02'),
(32, 2, 2, 1750.00, '2025-04-05'),
(33, 3, 3, 1650.00, '2025-04-08'),
(34, 4, 4, 1950.00, '2025-04-11'),
(35, 5, 5, 2050.00, '2025-04-14'),
(36, 6, 6, 2250.00, '2025-04-17'),
(37, 7, 1, 2350.00, '2025-04-20'),
(38, 8, 2, 1800.00, '2025-04-23'),
(39, 9, 3, 1700.00, '2025-04-26'),
(40, 10, 4, 2000.00, '2025-04-29'),
(41, 1, 5, 2200.00, '2025-05-03'),
(42, 2, 6, 1650.00, '2025-05-07'),
(43, 3, 1, 2250.00, '2025-05-11'),
(44, 4, 2, 1800.00, '2025-05-15'),
(45, 5, 3, 1900.00, '2025-05-19'),
(46, 6, 4, 2000.00, '2025-05-23'),
(47, 7, 5, 2400.00, '2025-05-27'),
(48, 8, 6, 2450.00, '2025-05-31'),
(49, 9, 1, 2600.00, '2025-06-04'),
(50, 10, 2, 2050.00, '2025-06-08'),
(51, 1, 3, 1550.00, '2025-06-12'),
(52, 2, 4, 1850.00, '2025-06-16'),
(53, 3, 5, 1950.00, '2025-06-20'),
(54, 4, 6, 1900.00, '2025-06-24'),
(55, 5, 1, 2000.00, '2025-07-01'),
(56, 6, 2, 2100.00, '2025-07-05'),
(57, 7, 3, 2200.00, '2025-07-09'),
(58, 8, 4, 2300.00, '2025-07-13'),
(59, 9, 5, 2350.00, '2025-07-17'),
(60, 10, 6, 2450.00, '2025-08-01');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
(1, 1, 'Laptop', 1000.00),
(2, 1, 'Smartphone', 800.00),
(3, 2, 'Tablet', 500.00),
(4, 2, 'Monitor', 300.00),
(5, 3, 'Headphones', 150.00),
(6, 3, 'Mouse', 25.00),
(7, 4, 'Keyboard', 50.00),
(8, 4, 'Speaker', 200.00),
(9, 5, 'Smartwatch', 250.00),
(10, 5, 'Camera', 700.00);

/* Easy tasks*/

--task1

with cte as 
(
select 1 as n
union all
select n+1 from cte where n<1000
)
select * from cte
option (maxrecursion 0)

--task2

select CONCAT_WS(' ', FirstName, LastName ) as Fullname,
s.TotalAmount
from Employees e
join 
(select EmployeeID, sum(SalesAmount) TotalAmount from Sales
group by EmployeeID
) s
on e.EmployeeID=s.EmployeeID

--task3

with cte as
(
select avg(salary) [Avarage salary] from Employees 
)
select * from cte

--task4

select
ProductName,
s.[highest sale]
from Products p
join
(select ProductID, max(SalesAmount) [highest sale] from Sales
group by ProductID
) as s
on p.ProductID=s.ProductID

--task5

with cte as 
(
select 1 as n
union all
select 2*n from cte where n<1000000 
)
select * from cte

--task6


;with cte as (
select CONCAT_WS(' ', FirstName, LastName ) as Fullname,
s.SalesCount
from Employees e
join(
select EmployeeID, COUNT(*) SalesCount from Sales
group by EmployeeID) as s
on e.EmployeeID=s.EmployeeID
where SalesCount>5
)
select * from cte


--task7


;with cte as(
select ProductName,
s.totalsales
from Products p
join
(
select ProductID, sum(SalesAmount) totalsales from Sales
group by ProductID
having sum(SalesAmount)>500
) as s
on p.ProductID=s.ProductID )
select * from cte

--task8
with cte as( 
select * from Employees
where Salary> (select AVG(Salary) from Employees)
) 
select * from cte

/* Medium Tasks*/

--task1



select top 5 CONCAT_WS(' ', FirstName, LastName ) as Fullname,
s.SalesCount
from Employees e
join(
select EmployeeID, COUNT(*) SalesCount from Sales
group by EmployeeID

) as s
on e.EmployeeID=s.EmployeeID
order by salescount desc


--task2


select
ProductName,
s.[total sale]
from Products p
join
(select ProductID, sum(SalesAmount) [total sale] from Sales
group by ProductID
) as s
on p.ProductID=s.ProductID

--task3

SELECT 
    Number,
    CASE 
        WHEN Number = 0 THEN 1
        ELSE 
            (
                SELECT EXP(SUM(LOG(n.Number)))
                FROM (
                    SELECT TOP (Numbers1.Number) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS Number
                    FROM sys.objects
                ) AS n
            )
    END AS Factorial
FROM Numbers1;

--task4


WITH SplitCTE AS (
    -- Anchor member: start with the first character
    SELECT 
        Id,
        SUBSTRING(String, 1, 1) AS CharPart,
        1 AS Position,
        String
    FROM Example

    UNION ALL

    -- Recursive member: get the next character
    SELECT 
        Id,
        SUBSTRING(String, Position + 1, 1),
        Position + 1,
        String
    FROM SplitCTE
    WHERE Position + 1 <= LEN(String)
)
SELECT 
    Id,
    CharPart AS Character,
    Position
FROM SplitCTE
ORDER BY Id, Position
OPTION (MAXRECURSION 0);


--task5



;with cte as
(select MONTH(SaleDate) Month, sum(SalesAmount) as sales_per_month from Sales
group by MONTH(SaleDate))
select a.Month ,
a.sales_per_month-b.sales_per_month as [Difference] from cte a
join cte b
on a.month=b.month+1

--task6


select * from(
select 
      e.EmployeeID,
      DATEPART(QUARTER, s.SaleDate) [quarter],
      sum(s.SalesAmount) TotalSales
from Employees e
join Sales s
on e.EmployeeID=s.EmployeeID
group by e.EmployeeID,  DATEPART(QUARTER, s.SaleDate)) as t
where totalsales>45000


/* Difficult Tasks */

--task1
;with cte as 
(
select 1 as n,
       0 as a,
       1 as b
union all
select n+1,
       b, 
       a+b
from cte
)
select n, a AS FibonacciNumber from cte


--task2

select  case 
when REPLACE(Vals, LEFT(vals, 1), '') = '' then Vals
end
from FindSameCharacters
where len(Vals)>1

--task3

;with cte as
(
select 1 as n,
cast('1' as varchar(50)) as result
union all
select n+1,
cast(result+cast(n+1 as varchar(50)) as varchar(50))

from cte where n<5
)
select result from cte

--task4


;with cte as(
select CONCAT_WS(' ', FirstName, LastName ) as Fullname,
s.totalsales
from Employees e
join
(
select EmployeeID, sum(SalesAmount) totalsales from Sales
where datediff(month, SaleDate, getdate())<=6
group by EmployeeID

) as s
on s.EmployeeID=e.EmployeeID )
select  top 1 * from cte
order by totalsales desc

--task5

select 
REPLACE(Pawan_slug_name, left(Pawan_slug_name, PATINDEX('%[0-9]%', Pawan_slug_name)), '')
from RemoveDuplicateIntsFromNames

select * from RemoveDuplicateIntsFromNames
select  PATINDEX('%[0-9]%', Pawan_slug_name) from RemoveDuplicateIntsFromNames
