
--LAB 2 Soultion
CREATE TABLE Employees3(
firstname nvarchar (50),lastname nvarchar (50)
,SSN int primary key, salary int ,
empaddress nvarchar (50) default 'cairo',
dateofbirth date,gender nvarchar (50) ,DepNUM int,
supervisorSSN int );

INSERT INTO Employees3 (firstname,lastname,SSN,
salary,empaddress,dateofbirth,gender,DepNUM,supervisorSSN)
VALUES('mohamed','sameh',570,34534,'ALEX','2000-03-12','M',999,011),
('osama','zero',698,2463,'ASSUIT','2003-07-22','M',888,015),
('ola','samy',234,5445,'luxor','2006-04-23','F',777,012);


SELECT * FROM Employees3;

SELECT firstname,lastname,salary,DepNUM FROM Employees3;

SELECT CONCAT (firstname,' ' ,lastname) AS full_name,
salary*0.10 AS annual_commission
FROM Employees3;

SELECT SSN,CONCAT(firstname,' ' ,lastname)AS full_name
FROM Employees3
WHERE salary>3000;

SELECT SSN,CONCAT(firstname,' ' ,lastname)AS full_name
FROM Employees3
WHERE salary*12>10000;

SELECT CONCAT (firstname,' ' ,lastname)AS full_name,salary
FROM Employees3
WHERE gender='F';


CREATE TABLE Project (projectname VARCHAR (50),
projectnum INT PRIMARY KEY,projectlocation VARCHAR (50),
DepNUM INT);

INSERT INTO Project (projectname,projectnum ,
projectlocation,DepNUM) VALUES ('Simple Library Manag Sys',
876,'china',999),('Customer Order Tracking',654,'usa',888),
('Personal Task Manager',231,'egypt',777);

SELECT projectname,projectlocation,DepNUM FROM Project;

SELECT projectname,projectlocation
FROM Project
WHERE DepNUM=777;

