 Mark Management System - MarkWebApp

👨‍🎓 Student Details

Name: ALAN C RAJU
USN:  4AL22CS009
Section: A

---
 Project Overview

The Mark Management System is a JSP-based web application that manages student exam marks. It enables:

- Adding, updating, deleting, and displaying student mark records.
- Generating reports like:
  - Students scoring above a threshold
  - Students who scored in a specific subject
  - Top N scoring students

---

Requirements

Before you install and run this project, ensure the following components are installed and configured:

| Tool            | Version / Details                        |
|-----------------|-------------------------------------------|
| Java JDK        | Version 8 or higher                       |
| Apache Tomcat   | Version 9.0+                              |
| XAMPP           | Includes MySQL server (MariaDB/MySQL)    |
| MySQL Connector | mysql-connector-java-x.x.xx.jar JDBC driver |
| Eclipse IDE     | With Java EE support                     |
| Web Browser     | Any modern browser (Chrome/Firefox/etc.)

---

Database Schema


CREATE TABLE StudentMarks (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Subject VARCHAR(50),
    Marks INT,
    ExamDate DATE
);
