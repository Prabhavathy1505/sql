---- Task For (16-08-2023)

-- 
CREATE DATABASE company;
--
CREATE TABLE Employee1 (
	EmpID BIGINT PRIMARY KEY IDENTITY(1,1),
    LastName varchar(25),
    FirstName varchar(25),
    [Address] varchar(150),
    City varchar(50)
);


INSERT INTO Employee1 ( LastName, FirstName,Address, City)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger');


-- Create table using another table in mssql
SELECT EmpID,LastName,FirstName 
INTO MyData  -- New TableName
FROM [dbo].[Employee1]; -- Old TableName

--
SELECT * FROM Employee2;
SELECT * FROM Employee1;
SELECT * FROM Employee;

--
DROP TABLE MyData1;

--
EXEC sp_rename 'Employee.Initial', 'LastName', 'COLUMN';

--
ALTER TABLE Employee
ALTER COLUMN LastName varchar(25);

ALTER TABLE Employee
ADD DateOfBirth date;

--Adding NOT NULL Contraints 
-- In create
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(25) NOT NULL,
    FirstName varchar(25) NOT NULL,
    Age int
);
-- In alter
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;



INSERT INTO persons(Id,LastName,FirstName,Age)Values(1,'kavi','vimal',25);

