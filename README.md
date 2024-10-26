# Database Design and Development - HTTP-5126-0NB

This repository includes materials for the Database Design & Development course. It teaches the basics of designing and implementing databases using SQL. Topics include relational database concepts, normalization, querying, database modeling and ER diagrams, SQL queries and data manipulation, indexing and optimization, stored procedures and triggers, and database security and backups.

## Resources
For more information, visit the [Official Course Page](https://mediaarts.humber.ca/programs/web-development.html).

![Database Design](https://i0.wp.com/nlindia.com/wp-content/uploads/2021/06/database-design-and-development-banner.jpg?w=802&ssl=1)

> ⚠️ **Warning:** Ensure your database credentials are secure and never push them to a public repository.

### Sample Code
```sql
-- Sample SQL query to create a table

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EnrollmentDate DATE
);
