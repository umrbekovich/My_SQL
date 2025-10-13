create database home_practice
go
use home_practice


--puzzle 1

CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

-- frist way

SELECT DISTINCT
    CASE 
        WHEN col1 < col2 THEN col1
        WHEN col1 > col2 THEN col2
        ELSE col1 -- handles col1 = col2 if any
    END AS col1,
    CASE
        WHEN col1 < col2 THEN col2
        WHEN col1 > col2 THEN col1
        ELSE col2 -- handles col1 = col2 if any
    END AS col2
FROM InputTbl
ORDER BY col1, col2;

--second way

SELECT DISTINCT
  LEAST(col1, col2) AS col1,
  GREATEST(col1, col2) AS col2
FROM InputTbl;



--puzzle 2

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

	select * from TestMultipleZero
	where A>0 OR B>0 OR C>0 OR D>0

	
	--PUZZLE 3

	create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
	

	SELECT * FROM section1
	WHERE id % 2 =1


	--PUZZLE 4

	SELECT TOP 1 * FROM section1
	ORDER BY ID ASC
	 

	 --PUZZLE 5

	 SELECT TOP 1 * FROM section1
	ORDER BY ID DESC
	 
	 --PUZZLE 6

	 SELECT * FROM section1
	 WHERE name LIKE 'B%'

	 --PUZZLE 7

	 CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

SELECT * FROM ProductCodes
WHERE Code LIKE '%\_%'
ESCAPE '\'
