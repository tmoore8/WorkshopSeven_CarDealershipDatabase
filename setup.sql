# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          database_name                                       #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS database_name;

CREATE DATABASE IF NOT EXISTS database_name;

USE database_name;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "Dealership"                                                 #
# ---------------------------------------------------------------------- #
CREATE TABLE `Dealership` (
    `Dealership_ID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL,
    `Address` VARCHAR(50),
    `PHONE` VARCHAR(12),
    PRIMARY KEY (`Dealership_ID`)
);
# ---------------------------------------------------------------------- #
# Add table "Vehicles"                                       #
# ---------------------------------------------------------------------- #
CREATE TABLE `Vehicles` (
`VIN` VARCHAR(17) NOT NULL,
`Make` VARCHAR(50),
`Model` VARCHAR(50), 
`Year` INTEGER(4),
`Color` VARCHAR(20),
`Mileage`INTEGER,
`Price` DECIMAL(10,2),
`SOLD` BOOLEAN, 
PRIMARY KEY (`VIN`)
);
# ---------------------------------------------------------------------- #
# Add table "Inventory"                                       #
# ---------------------------------------------------------------------- #
CREATE TABLE `Inventory` (
`Dealership_ID` INTEGER NOT NULL AUTO_INCREMENT,
`VIN` VARCHAR(17) NOT NULL,
`Date_Added` DATE,
FOREIGN KEY (`Dealership_ID`) REFERENCES `Dealership`(`Dealership_ID`),
FOREIGN KEY (`VIN`) REFERENCES `Vehicles`(`VIN`)

);
# ---------------------------------------------------------------------- #
# Add table "Sales_Contracts"                                       #
# ---------------------------------------------------------------------- #
CREATE TABLE `Sales_Contracts` (
`Sale_ID` INTEGER NOT NULL AUTO_INCREMENT,
`VIN` VARCHAR(17) NOT NULL,
`Customer_Name` VARCHAR(50),
`Customer_Address` VARCHAR(50),
`Customer_Phone` VARCHAR(12),
`Sales_Date` DATE,
`Sales_Price` DECIMAL(10,2),
PRIMARY KEY (`Sale_ID`),
FOREIGN KEY (`VIN`) REFERENCES `Vehicles`(`VIN`)


);
# ---------------------------------------------------------------------- #
# Add table "Lease_Contracts"                                       #
# ---------------------------------------------------------------------- #
CREATE TABLE `Lease_Contracts` (
`Lease_ID` INTEGER NOT NULL AUTO_INCREMENT,
`VIN` VARCHAR(17) NOT NULL,
`Customer_Name` VARCHAR(50),
`Customer_Address` VARCHAR(50),
`Customer_Phone` VARCHAR(12),
`Lease_Start_Date` DATE,
`Lease_End_Date` DATE,
`Monthly_Payment` DECIMAL(10,2),
PRIMARY KEY (`Lease_ID`),
FOREIGN KEY (`VIN`) REFERENCES `Vehicles`(`VIN`)
);
# ---------------------------------------------------------------------- #
# Add info into "Dealership"                                             #
# ---------------------------------------------------------------------- #

INSERT INTO Dealership (name, address, phone) VALUES
('Auto World', '1234 Elm St, Springfield, IL', '555-1234'),
('Best Cars', '5678 Oak St, Springfield, IL', '555-5678'),
('Car Nation', '9101 Maple St, Springfield, IL', '555-9101'),
('Drive Time', '1122 Birch St, Springfield, IL', '555-1122'),
('Speedy Motors', '2233 Pine St, Springfield, IL', '555-2233'),
('Luxury Rides', '3344 Cedar St, Springfield, IL', '555-3344');
# ---------------------------------------------------------------------- #
# Add info into "Vehicles"                                             #
# ---------------------------------------------------------------------- #

INSERT INTO Vehicles (VIN, make, model, year, color, mileage, price, sold) VALUES
('1HGCM82633A123456', 'Honda', 'Accord', 2020, 'Black', 15000, 22000.00, FALSE),
('1HGCM82633A123457', 'Toyota', 'Camry', 2019, 'White', 25000, 20000.00, FALSE),
('1HGCM82633A123458', 'Ford', 'Mustang', 2021, 'Red', 5000, 35000.00, TRUE),
('1HGCM82633A123459', 'Chevrolet', 'Malibu', 2018, 'Blue', 30000, 18000.00, FALSE),
('1HGCM82633A123460', 'Nissan', 'Altima', 2020, 'Gray', 12000, 21000.00, TRUE),
('1HGCM82633A123461', 'Mazda', 'CX-5', 2021, 'Silver', 8000, 25000.00, FALSE),
('1HGCM82633A123462', 'Hyundai', 'Elantra', 2019, 'Green', 22000, 17000.00, FALSE),
('1HGCM82633A123463', 'BMW', 'X5', 2022, 'Black', 5000, 55000.00, TRUE),
('1HGCM82633A123464', 'Audi', 'A4', 2018, 'White', 35000, 27000.00, FALSE),
('1HGCM82633A123465', 'Mercedes', 'C-Class', 2021, 'Blue', 10000, 40000.00, TRUE);
# ---------------------------------------------------------------------- #
# Add info into "Inventory"                                             #
# ---------------------------------------------------------------------- #

INSERT INTO Inventory (dealership_id, VIN, date_added) VALUES
(1, '1HGCM82633A123456', '2023-01-15'),
(1, '1HGCM82633A123457', '2023-02-20'),
(2, '1HGCM82633A123458', '2023-03-10'),
(3, '1HGCM82633A123459', '2023-04-05'),
(2, '1HGCM82633A123460', '2023-05-12'),
(4, '1HGCM82633A123461', '2023-06-15'),
(5, '1HGCM82633A123462', '2023-07-20'),
(6, '1HGCM82633A123463', '2023-08-25'),
(3, '1HGCM82633A123464', '2023-09-30'),
(1, '1HGCM82633A123465', '2023-10-05');
# ---------------------------------------------------------------------- #
# Add info into "Sales_Contracts"                                             #
# ---------------------------------------------------------------------- #

INSERT INTO Sales_Contracts (VIN, customer_name, customer_address, customer_phone, sales_date, sales_price) VALUES
('1HGCM82633A123458', 'John Doe', '123 Maple St, Springfield, IL', '555-0001', '2023-06-01', 34000.00),
('1HGCM82633A123460', 'Jane Smith', '456 Oak St, Springfield, IL', '555-0002', '2023-06-15', 20000.00),
('1HGCM82633A123463', 'Mike Johnson', '789 Birch St, Springfield, IL', '555-0003', '2023-09-10', 53000.00),
('1HGCM82633A123465', 'Emily Davis', '101 Pine St, Springfield, IL', '555-0004', '2023-11-20', 39000.00);
# ---------------------------------------------------------------------- #
# Add info into "Lease_Contracts"                                             #
# ---------------------------------------------------------------------- #

INSERT INTO lease_contracts (VIN, customer_name, customer_address, customer_phone, lease_start_date, lease_end_date, monthly_payment) VALUES
('1HGCM82633A123456', 'Alice Johnson', '789 Pine St, Springfield, IL', '555-0003', '2023-01-01', '2025-01-01', 400.00),
('1HGCM82633A123457', 'Bob Brown', '321 Cedar St, Springfield, IL', '555-0004', '2023-02-01', '2025-02-01', 350.00),
('1HGCM82633A123461', 'Catherine Green', '654 Willow St, Springfield, IL', '555-0005', '2023-07-01', '2025-07-01', 450.00),
('1HGCM82633A123462', 'David Black', '987 Maple St, Springfield, IL', '555-0006', '2023-08-01', '2025-08-01', 300.00);



