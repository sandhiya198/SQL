SQL   https://github.com/sandhiya198/SQL/blob/main/sql%20project%202025.sql
SQL Project: Student Management System
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

-- Students
INSERT INTO Students VALUES (1, 'Alice', 'Female', 20);
INSERT INTO Students VALUES (2, 'Bob', 'Male', 21);
INSERT INTO Students VALUES (3, 'Charlie', 'Male', 22);

-- Courses
INSERT INTO Courses VALUES (101, 'Math', 3);
INSERT INTO Courses VALUES (102, 'Physics', 4);
INSERT INTO Courses VALUES (103, 'English', 2);

-- Enrollments
INSERT INTO Enrollments VALUES (1, 1, 101, 'A');
INSERT INTO Enrollments VALUES (2, 1, 102, 'B');
INSERT INTO Enrollments VALUES (3, 2, 101, 'C');
INSERT INTO Enrollments VALUES (4, 3, 103, 'B');

-- Departments
INSERT INTO Departments VALUES (1, 'Science');
INSERT INTO Departments VALUES (2, 'Arts');

