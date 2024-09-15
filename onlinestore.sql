create database onlinestore;
use onlinestore;
 CREATE TABLE Products (
    ->     ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ->     ProductName VARCHAR(100) NOT NULL,
    ->     Category VARCHAR(50),
    ->     Price DECIMAL(10, 2) NOT NULL,
    ->     Stock INT NOT NULL
    -> );
 describe products;

CREATE TABLE Customers (
    ->     CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     Email VARCHAR(100) NOT NULL UNIQUE,
    ->     PhoneNumber VARCHAR(15)
    -> );

describe Customers;

CREATE TABLE Orders (
    ->     OrderID INT PRIMARY KEY AUTO_INCREMENT,
    ->     CustomerID INT,
    ->     OrderDate DATE NOT NULL,
    ->     Status VARCHAR(20) DEFAULT 'Pending',
    ->     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    -> );
describe Orders;


 CREATE TABLE OrderDetails (
    ->     OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    ->     OrderID INT,
    ->     ProductID INT,
    ->     Quantity INT NOT NULL,
    ->     Price DECIMAL(10, 2) NOT NULL,
    ->     FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ->     FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    -> );

descriibe OrderDestails;


 CREATE TABLE Payments (
    ->     PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     OrderID INT,
    ->     PaymentDate DATE NOT NULL,
    ->     Amount DECIMAL(10, 2) NOT NULL,
    ->     PaymentMethod VARCHAR(50),
    ->     FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
    -> );

describr Payments;

 INSERT INTO Products (ProductName, Category, Price, Stock)
    -> VALUES
    -> ('Laptop', 'Electronics', 800.00, 10),
    -> ('Smartphone', 'Electronics', 600.00, 15),
    -> ('Headphones', 'Accessories', 50.00, 50),
    -> ('Tablet', 'Electronics', 300.00, 20),
    -> ('Monitor', 'Electronics', 200.00, 25),
    -> ('Keyboard', 'Accessories', 40.00, 40),
    -> ('Mouse', 'Accessories', 25.00, 60),
    -> ('External Hard Drive', 'Storage', 100.00, 30),
    -> ('USB Cable', 'Accessories', 10.00, 100),
    -> ('Charger', 'Accessories', 20.00, 80),
    -> ('Desk Chair', 'Furniture', 150.00, 15),
    -> ('Desk Lamp', 'Furniture', 40.00, 30),
    -> ('HDMI Cable', 'Accessories', 15.00, 70),
    -> ('Printer', 'Electronics', 120.00, 12),
    -> ('Webcam', 'Accessories', 45.00, 35),
    -> ('Router', 'Networking', 90.00, 25),
    -> ('Speaker', 'Electronics', 130.00, 18),
    -> ('Camera', 'Electronics', 500.00, 8),
    -> ('Power Bank', 'Accessories', 25.00, 50),
    -> ('Smartwatch', 'Wearables', 250.00, 12);

select*from Products;


INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber)
    -> VALUES
    -> ('John', 'Doe', 'john.doe@example.com', '1234567890'),
    -> ('Jane', 'Smith', 'jane.smith@example.com', '2345678901'),
    -> ('Michael', 'Johnson', 'michael.j@example.com', '3456789012'),
    -> ('Emily', 'Davis', 'emily.davis@example.com', '4567890123'),
    -> ('David', 'Brown', 'david.brown@example.com', '5678901234'),
    -> ('Sarah', 'Miller', 'sarah.miller@example.com', '6789012345'),
    -> ('Robert', 'Wilson', 'robert.wilson@example.com', '7890123456'),
    -> ('Linda', 'Taylor', 'linda.taylor@example.com', '8901234567'),
    -> ('James', 'Moore', 'james.moore@example.com', '9012345678'),
    -> ('Sophia', 'Anderson', 'sophia.anderson@example.com', '0123456789');

select*from Customers;

 INSERT INTO Orders (CustomerID, OrderDate, Status)
    -> VALUES
    -> (1, '2024-09-01', 'Pending'),
    -> (2, '2024-09-02', 'Pending'),
    -> (3, '2024-09-03', 'Pending'),
    -> (4, '2024-09-04', 'Pending'),
    -> (5, '2024-09-05', 'Pending'),
    -> (6, '2024-09-06', 'Pending'),
    -> (7, '2024-09-07', 'Pending');

select*from Orders;

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
    -> VALUES
    -> -- Order 1
    -> (1, 1, 1, 800.00), 
    -> (1, 2, 1, 600.00), 
    -> (1, 3, 2, 50.00), 
    ->
    -> -- Order 2
    -> (2, 4, 1, 300.00), 
    -> (2, 5, 1, 200.00), 
    -> (2, 6, 2, 40.00),  
    ->
    -> -- Order 3
    -> (3, 7, 1, 25.00),  
    -> (3, 8, 1, 100.00), 
    -> (3, 9, 3, 10.00),  
    ->
    -> -- Order 4
    -> (4, 10, 1, 20.00), 
    -> (4, 11, 1, 150.00), 
    -> (4, 12, 2, 40.00),  
    -> -- Order 5
    -> (5, 13, 1, 15.00),
    -> (5, 14, 1, 120.00),
    -> (5, 15, 1, 45.00),
    ->
    -> -- Order 6
    -> (6, 16, 1, 90.00),
    -> (6, 17, 1, 130.00),
    -> (6, 18, 1, 500.00),
    ->
    -> -- Order 7
    -> (7, 19, 1, 25.00), 
    -> (7, 20, 1, 250.00),
    -> (7, 1, 1, 800.00);


select*from OrderDetails;

 UPDATE Orders SET Status = 'Completed' WHERE OrderID = 1;
 UPDATE Orders SET Status = 'Completed' WHERE OrderID = 2;
UPDATE Orders SET Status = 'Completed' WHERE OrderID = 3;
 UPDATE Orders SET Status = 'Completed' WHERE OrderID = 4;
UPDATE Orders SET Status = 'Completed' WHERE OrderID = 5;
 UPDATE Orders SET Status = 'Completed' WHERE OrderID = 6;
 UPDATE Orders SET Status = 'Completed' WHERE OrderID = 7;

select*from OrderDeatils;