-- Create the database
CREATE DATABASE IF NOT EXISTS DBS622_Assignment;

-- Select the database
USE DBS622_Assignment;


-- =========================================
-- 1. CREATE VENDOR TABLE
-- =========================================

CREATE TABLE VENDOR (
    Vendor_Code INT PRIMARY KEY,
    Vendor_Name VARCHAR(100) NOT NULL
);


-- =========================================
-- 2. CREATE PRODUCT TABLE
-- =========================================

CREATE TABLE PRODUCT (
    Product_Code INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Product_Min INT NOT NULL,
    Product_QuantityOnHand INT NOT NULL,
    Product_Price DECIMAL(10,2) NOT NULL
);


-- =========================================
-- 3. CREATE VENDOR_INVOICE TABLE
-- =========================================

CREATE TABLE VENDOR_INVOICE (
    Invoice_Number INT AUTO_INCREMENT PRIMARY KEY,
    Invoice_Date DATE NOT NULL,
    Vendor_Code INT NOT NULL,

    FOREIGN KEY (Vendor_Code)
        REFERENCES VENDOR(Vendor_Code)
);


-- =========================================
-- 4. CREATE VENDOR_PRODUCT TABLE
-- =========================================

CREATE TABLE VENDOR_PRODUCT (
    Vendor_Code INT NOT NULL,
    Product_Code INT NOT NULL,

    PRIMARY KEY (Vendor_Code, Product_Code),

    FOREIGN KEY (Vendor_Code)
        REFERENCES VENDOR(Vendor_Code),

    FOREIGN KEY (Product_Code)
        REFERENCES PRODUCT(Product_Code)
);


-- =========================================
-- 5. CREATE VENDOR_INVOICELINE TABLE
-- =========================================

CREATE TABLE VENDOR_INVOICELINE (
    Invoice_Number INT NOT NULL,
    Line_Number INT NOT NULL,
    Product_Code INT NOT NULL,
    Line_Price DECIMAL(10,2) NOT NULL,
    Line_Quantity INT NOT NULL,

    PRIMARY KEY (Invoice_Number, Line_Number),

    FOREIGN KEY (Invoice_Number)
        REFERENCES VENDOR_INVOICE(Invoice_Number),

    FOREIGN KEY (Product_Code)
        REFERENCES PRODUCT(Product_Code)
);