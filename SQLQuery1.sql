use CompanyDB
CREATE TABLE Employees(
firstname nvarchar (50),lastname nvarchar (50),Age int,
SSN int primary key, salary int , empaddress nvarchar (50) default 'cairo',
dateofbirth date,gender nvarchar (50) ,
DepNUM int, supervisorSSN int );
--************************************
ALTER TABLE Employees add phone int ;
--DROP TABLE Employees;
--TRUNCATE TABLE Employees;
--************************************
CREATE INDEX idx_lastname ON Employees(LastName);
DROP INDEX idx_lastname ON Employees ;
--************************************
--CREATE VIEW EmployeeView AS SELECT firstname , lastname FROM Employees;
--DROP VIEW EmployeeView ;
--**************************************
CREATE DATABASE AhmedDB;
DROP DATABASE AhmedDB;
--**************************************************************
--DML
INSERT INTO Employees (firstname,lastname,SSN,empaddress)
VALUES ('Ahmed','Ali',239439320,'Alex');
INSERT INTO Employees (firstname,lastname,SSN,empaddress)
VALUES ('mona','nasser',89898989,'Alex');
select firstname,lastname,SSN,empaddress from Employees

UPDATE Employees SET lastname='mohamed' WHERE SSN =239439320;
--UPDATE Employees SET empaddress='Alex' where SSN =239439320;
DELETE FROM Employees WHERE lastname='nasser';
CREATE TABLE EmployeesBACKUP (firStname nvarchar(50),
lastname nvarchar(50) ,SSN int ,empaddress nvarchar(50));
SELECT * INTO EmployeesBACKUP FROM Employees;
select * from EmployeesBACKUP;

INSERT INTO EmployeesBACKUP (firstname,lastname,SSN,empaddress)
SELECT firstname,lastname,SSN,empaddress FROM Employees;
SELECT firstname,lastname,SSN,empaddress FROM EmployeesBACKUP;
--*****************************************************************
--DCL
--GRANT SELECT , INSERT ON Employees FROM 'UserName'; 
--REVOKE INSERT ON Employees FROM 'UserName'; 
--DENY INSERT ON Employees TO 'UserName';
SELECT * FROM Employees 
ORDER BY lastname ASC;

SELECT COUNT(firstname) from Employees
group by empaddress

INSERT INTO Employees (firstname,lastname,SSN,empaddress) values
('mohamed','sameh',12345,'alex'),('osama','zero',678912,'cairo');
SELECT * FROM Employees WHERE lastname='mohamed';
SELECT firstname,lastname from Employees ORDER BY SSN ASC;
--**********************************************************

