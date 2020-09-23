DROP DATABASE IF EXISTS DuckShopDB;
CREATE DATABASE DuckShopDB;
USE DuckShopDB;

CREATE TABLE Customers (
    customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(70) NOT NULL,
    email VARCHAR(70) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    adress VARCHAR(50) NOT NULL

);

CREATE TABLE Orders (
    orderID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    productname VARCHAR(100) NOT NULL,
    `date` DATE NOT NULL,
    quantity INT NOT NULL,
    `description` VARCHAR(10000) NOT NULL,
    totalcost DECIMAL(6, 2) NOT NULL,
    customer INT NULL,
    FOREIGN KEY (customer) REFERENCES Customers (customerID)
);

CREATE TABLE Products (
    price DECIMAL(3, 2) NOT NULL,
    `name` VARCHAR(70) NOT NULL,
    color VARCHAR(50) NOT NULL,
    CONSTRAINT color CHECK (color NOT LIKE '%[^A-Z]%'),
    size VARCHAR(20) NOT NULL
    
);
