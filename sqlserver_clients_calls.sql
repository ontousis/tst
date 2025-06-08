-- Create database
CREATE DATABASE CallRecords;
GO

USE CallRecords;
GO

-- Create Clients table
CREATE TABLE Clients (
    Client_ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Surname NVARCHAR(50)
);
GO

-- Create CallResponses table
CREATE TABLE CallResponses (
    Call_ID INT,
    Response NVARCHAR(3) CHECK (Response IN ('Yes', 'No'))
);
GO

-- Insert 25 records into Clients (some matching MySQL names)
INSERT INTO Clients (Client_ID, Name, Surname) VALUES
(10001, 'Alice', 'Smith'),
(10002, 'Bob', 'Johnson'),
(10003, 'Xander', 'Black'),
(10004, 'Yara', 'White'),
(10005, 'Zane', 'King'),
(10006, 'Eva', 'Hill'),
(10007, 'Liam', 'Scott'),
(10008, 'Noah', 'Green'),
(10009, 'Mia', 'Baker'),
(10010, 'Luna', 'Carter'),
(10011, 'Fiona', 'Garcia'),
(10012, 'George', 'Miller'),
(10013, 'Tina', 'Martin'),
(10014, 'Steve', 'Jackson'),
(10015, 'Hannah', 'Davis'),
(10016, 'Derek', 'Reed'),
(10017, 'Olivia', 'Cole'),
(10018, 'Sophia', 'Ward'),
(10019, 'Jackson', 'Lee'),
(10020, 'Ella', 'Turner'),
(10021, 'Ben', 'Perry'),
(10022, 'Nora', 'Bell'),
(10023, 'Ivy', 'Cook'),
(10024, 'Leo', 'Price'),
(10025, 'Aria', 'Gray');
GO

-- Insert 15 responses using Call_IDs from MySQL (1-20)
INSERT INTO CallResponses (Call_ID, Response) VALUES
(1, 'Yes'),
(3, 'No'),
(5, 'Yes'),
(7, 'No'),
(9, 'Yes'),
(2, 'Yes'),
(4, 'No'),
(6, 'Yes'),
(8, 'No'),
(10, 'Yes'),
(11, 'No'),
(13, 'Yes'),
(15, 'No'),
(17, 'Yes'),
(20, 'No');
GO
