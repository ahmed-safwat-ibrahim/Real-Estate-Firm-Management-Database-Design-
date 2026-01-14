# Real-Estate-Firm-Management-Database-Design-
---

# 🏢 Company Management System Database

## 📝 Project Overview

This project involves the design and implementation of a comprehensive relational database schema for a **Company Management System**. The system is built using SQL to manage core business entities, including departments, employees, projects, and dependents. It establishes complex relationships and data integrity constraints to ensure professional-grade data management.

---

## 🏗️ Database Architecture

The schema consists of several interconnected tables designed to eliminate data redundancy and maintain referential integrity.

### 🔑 Key Entities & Relationships

* **Departments**: Managed by an employee (ManagerID) and contains multiple employees.
* **Employees**: The core entity, including self-referencing SSN for supervisors and foreign keys for department affiliation.
* **Projects**: Controlled by specific departments and linked to employees via an associative table.
* **Dependents**: Linked to employees to track family relationships.
* **Works_For**: An associative (Many-to-Many) table tracking which employees work on which projects and their weekly hours.

---

## 🛠️ Technical Implementation

### **Data Integrity & Constraints**

The project utilizes advanced SQL constraints to ensure high data quality:

* **Primary Keys**: Unique identifiers for every record (e.g., `EmployeeID`, `DepartmentID`).
* **Foreign Keys**: Strict referential integrity (e.g., `fk_Manager` in the Departments table).
* **CHECK Constraints**: Business logic validation (e.g., `Salary >= 0` and `HoursPerWeek >= 0`).
* **Unique Constraints**: Ensuring sensitive data like `SSN` is never duplicated.

### **SQL Features Used**

* `CREATE DATABASE` & `USE` for environment setup.
* `ALTER TABLE` for adding constraints post-creation.
* `DECIMAL(10, 2)` for precise financial data handling.
* `DATE` types for birthdates and historical tracking.
* `INSERT INTO` for populating the organizational structure (17 initial departments).

---

## 📂 Database Initialization

The script provided performs the following steps:

1. **Environment Setup**: Creates the `CompanyDB`.
2. **Table Creation**: Builds the structural skeleton for the organization.
3. **Relationship Binding**: Links tables using primary and foreign key constraints.
4. **Seeding**: Populates the `Departments` table with default business units including Human Resources, IT, Research and Development, and more.

---

## 🚀 How to Deploy

1. Copy the SQL script from the provided `1752614030096.jpg` source file.
2. Open your preferred SQL Management Tool (e.g., MySQL Workbench, SQL Server Management Studio, or PostgreSQL).
3. Execute the script to build the entire schema.
4. Verify the department seeding by running:
```sql
SELECT * FROM Departments;


> **Note:** This project demonstrates foundational skills in Database Design (ER modeling translation to SQL) and Backend Data Management.

**Would you like me to create the specific SQL View codes for "Employee Project Hours" based on this schema?**
