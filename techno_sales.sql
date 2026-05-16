create database techno_sales;

USE techno_sales;

-- 1. Create State List Table
CREATE TABLE State_list (
    State VARCHAR(100),
    State_Code VARCHAR(10) PRIMARY KEY
);

-- 2. Create Supervisor Table
CREATE TABLE Supervisor (
    State_Code VARCHAR(10) PRIMARY KEY,
    Assigned_Supervisor VARCHAR(100)
);

-- 3. Create Main Sales Data Table
CREATE TABLE Sales_Data (
    Order_Number VARCHAR(50) PRIMARY KEY,
    Customer_Name VARCHAR(150),
    Order_Date VARCHAR(50), -- Kept as text first to avoid date-format import errors
    State_Code VARCHAR(10),
    Product VARCHAR(100),
    Category VARCHAR(100),
    Brand VARCHAR(100),
    Quantity INT,
    Total_Cost DECIMAL(10, 2),
    Total_Sales DECIMAL(10, 2)
);