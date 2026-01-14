
CREATE DATABASE real_estate_firm ;
USE real_estate_firm

CREATE TABLE Sales_Office  
( Office_Num INT PRIMARY KEY ,
  Office_Location VARCHAR(20),
  Employee_ID INT);

CREATE TABLE Employee0 
( Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(20),
  Office_Number INT 
);

CREATE TABLE Owner1
( Owner_ID INT PRIMARY KEY,
  Owner_Name VARCHAR(20)
);

CREATE TABLE Property
( Property_ID INT PRIMARY KEY,
  Property_Address VARCHAR(20),
  Property_City VARCHAR(20),
  Property_State VARCHAR(20),
  Property_zip_code VARCHAR(20),
  Office_Num INT
);

CREATE TABLE Property_Owner
( Property_ID INT,
  Owner_ID INT,
  Precent_Owned FLOAT
);

