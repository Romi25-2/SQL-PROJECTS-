INSERT INTO VENDOR (Vendor_Code, Vendor_Name)
VALUES
(101, 'Tech Solutions'),
(102, 'Computer World'),
(103, 'Digital Supplies'),
(104, 'Smart Electronics'),
(105, 'Global IT Products');

INSERT INTO PRODUCT
(Product_Code, Product_Name, Product_Min, Product_QuantityOnHand, Product_Price)
VALUES
(1001, 'Laptop', 20, 8, 12500.00),
(1002, 'Wireless Mouse', 30, 45, 350.00),
(1003, 'Keyboard', 25, 10, 450.00),
(1004, 'Monitor', 15, 5, 3200.00),
(1005, 'USB Flash Drive', 50, 20, 180.00),
(1006, 'Printer', 10, 12, 4500.00),
(1007, 'Webcam', 20, 7, 850.00),
(1008, 'External Hard Drive', 15, 4, 1500.00),
(1009, 'Headset', 25, 30, 650.00),
(1010, 'Network Router', 12, 6, 1200.00);

INSERT INTO VENDOR_PRODUCT
(Vendor_Code, Product_Code)
VALUES
(101, 1001),
(101, 1003),
(101, 1006),

(102, 1002),
(102, 1004),
(102, 1009),

(103, 1005),
(103, 1008),
(103, 1010),

(104, 1001),
(104, 1007),
(104, 1009),

(105, 1002),
(105, 1005),
(105, 1008);

INSERT INTO VENDOR_INVOICE
(Invoice_Date, Vendor_Code)
VALUES
('2026-08-01', 101),
('2026-08-05', 102),
('2026-08-10', 103),
('2026-08-15', 104),
('2026-08-20', 105),
('2026-08-25', 101),
('2026-08-28', 103);

INSERT INTO VENDOR_INVOICELINE
(Invoice_Number, Line_Number, Product_Code, Line_Price, Line_Quantity)
VALUES
(1, 1, 1001, 12000.00, 5),
(1, 2, 1003, 400.00, 10),

(2, 1, 1002, 300.00, 20),
(2, 2, 1004, 3000.00, 5),

(3, 1, 1005, 150.00, 30),
(3, 2, 1008, 1300.00, 5),

(4, 1, 1007, 750.00, 10),
(4, 2, 1009, 600.00, 15),

(5, 1, 1002, 320.00, 25),
(5, 2, 1008, 1400.00, 8),

(6, 1, 1006, 4200.00, 4),
(6, 2, 1003, 410.00, 8),

(7, 1, 1010, 1100.00, 10),
(7, 2, 1005, 160.00, 20);
