# E-Gradebook SQL Version

This repository contains the SQL-based version of the **E-Gradebook** project. It was developed using **Microsoft SQL Server** and includes:

- Table creation scripts
- Stored procedures for adding/editing/deleting students, subjects, and grades
- SELECT queries for custom reports
- Sample test data


## 📁 Project Structure

- **`01_Tables.sql`**  
  Contains all `CREATE TABLE` statements required to initialize the database schema, including primary and foreign keys.

- **`02_Procedures.sql`**  
  Includes stored procedures for:
  - Adding, editing, and deleting students
  - Managing subjects and grades
  - Assigning and updating absence records

- **`03_Queries.sql`**  
  A collection of SELECT queries and views that extract:
  - Average grades per subject/student
  - Failing or top-performing students
  - Students with excessive absences

- **`05_Test_Data.sql`**  
  Example `INSERT` statements to populate the database with sample data for testing and demonstration.


## ⚙️ Technologies Used
- Microsoft SQL Server
- SQL (T-SQL)

## 📄 Notes
This version is **separate** from the C++ console implementation and was built independently as a database-only solution.

## 🏁 Getting Started
To run this project:
1. Open SQL Server Management Studio.
2. Execute the scripts in the correct order (tables → triggers → procedures → test data).
3. Use the provided SELECT queries for reports.



---


