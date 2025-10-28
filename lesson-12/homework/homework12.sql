
--puzzle1

Create table Person (personId int, firstName varchar(255), lastName varchar(255))
Create table Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')

select  firstName, lastName, city, state  from Person p
left join Address a
on p.personId=a.personId


--puzzle2

Create table Employee (id int, name varchar(255), salary int, managerId int)
Truncate table Employee
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3')
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4')
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL)
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL)

select e2.name Employee  from Employee e1
join Employee e2
on e1.id=e2.managerId
where e2.salary>e1.salary


--puzzle3
drop table Person
Create table  Person (id int, email varchar(255))
Truncate table Person insert into Person (id, email) values ('1', 'a@b.com') insert into Person (id, email) values ('2', 'c@d.com') insert into Person (id, email) values ('3', 'a@b.com')


select  email  from Person
group by email
having COUNT(id)=2

--puzzle4

create table Person (id int, email varchar(50))
insert into Person values
( 1, 'john@example.com'),
( 2, 'bob@example.com' ),
( 3, 'john@example.com')

delete p1
from person p1
join person p2
on p1.email = p2.email
where p1.id > p2.id;
select * from Person

--puzzle5

CREATE TABLE boys (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
);

CREATE TABLE girls (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
);

INSERT INTO boys (Id, name, ParentName) 
VALUES 
(1, 'John', 'Michael'),  
(2, 'David', 'James'),   
(3, 'Alex', 'Robert'),   
(4, 'Luke', 'Michael'),  
(5, 'Ethan', 'David'),    
(6, 'Mason', 'George');  


INSERT INTO girls (Id, name, ParentName) 
VALUES 
(1, 'Emma', 'Mike'),  
(2, 'Olivia', 'James'),  
(3, 'Ava', 'Robert'),    
(4, 'Sophia', 'Mike'),  
(5, 'Mia', 'John'),      
(6, 'Isabella', 'Emily'),
(7, 'Charlotte', 'George');

select * from boys

select * from girls

select distinct g.ParentName from girls g
left join boys b
on g.ParentName=b.ParentName
where b.name is null

--puzzle6

select * from [TSQL2012].[Sales].[Orders]

SELECT
    O.custid,
    SUM(O.freight) AS TotalSalesAmountForHeavyOrders, -- Placeholder for Sales Amount aggregation
    MIN(O.freight) AS LeastWeight              -- Using 'freight' as the proxy for 'weight'
FROM
   [TSQL2012].[Sales].[Orders] AS O
WHERE
    O.freight > 50  -- Filter for orders where 'weight' (freight) is more than 50
GROUP BY
    O.custid
ORDER BY
    O.custid;

-- NOTE: The actual "Sales Amount" calculation in the TSQL2012 database
-- usually requires joining Sales.Orders with Sales.OrderDetails.
-- If 'freight' is the intended column for both "Sales Amount" and "weight", 
-- the query would simply use SUM(O.freight) for the total "Sales Amount".

--puzzle7


DROP TABLE IF EXISTS Cart1;
DROP TABLE IF EXISTS Cart2;
GO

CREATE TABLE Cart1
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

CREATE TABLE Cart2
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

INSERT INTO Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO

INSERT INTO Cart2 (Item) VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO


select ISNULL(Cart1.Item, ' ') as [Item card 1],
       ISNULL(Cart2.Item, ' ') as [Item card 2]
	   from Cart1
full join Cart2
on Cart1.Item=Cart2.Item
order by  Cart1.Item desc


--puzzle8

Create table Customers (id int, name varchar(255))
Create table Orders (id int, customerId int)
Truncate table Customers
insert into Customers (id, name) values ('1', 'Joe')
insert into Customers (id, name) values ('2', 'Henry')
insert into Customers (id, name) values ('3', 'Sam')
insert into Customers (id, name) values ('4', 'Max')
Truncate table Orders
insert into Orders (id, customerId) values ('1', '3')
insert into Orders (id, customerId) values ('2', '1')

select name as Customer from Customers c
left join Orders o
on c.id=o.customerId
where o.id is null


--puzzle9

Create table Students (student_id int, student_name varchar(20))
Create table Subjects (subject_name varchar(20))
Create table Examinations (student_id int, subject_name varchar(20))
Truncate table Students
insert into Students (student_id, student_name) values ('1', 'Alice')
insert into Students (student_id, student_name) values ('2', 'Bob')
insert into Students (student_id, student_name) values ('13', 'John')
insert into Students (student_id, student_name) values ('6', 'Alex')
Truncate table Subjects
insert into Subjects (subject_name) values ('Math')
insert into Subjects (subject_name) values ('Physics')
insert into Subjects (subject_name) values ('Programming')
Truncate table Examinations
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Programming')
insert into Examinations (student_id, subject_name) values ('2', 'Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Programming')
insert into Examinations (student_id, subject_name) values ('13', 'Physics')
insert into Examinations (student_id, subject_name) values ('2', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Math')


select 
      st.student_id, 
	  student_name, 
	  sb.subject_name, 
	  COUNT(e.student_id)
from Students st
cross join Subjects sb
left join Examinations e
on st.student_id=e.student_id


group by  st.student_id, student_name, sb.subject_name
