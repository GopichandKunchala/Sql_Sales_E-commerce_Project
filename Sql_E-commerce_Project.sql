CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Phone VARCHAR(20)
);

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES 
('Rahul', 'Sharma', 'rahulsharma@gmail.com', '9876543210'),
('Priya', 'Verma', 'priya.verma@yahoo.com', '8765432109'),
('Amit', 'Patel', 'amitpatel@gmail.com', '9123456780'),
('Sneha', 'Reddy', 'sneha.reddy@gmail.com', '9988776655'),
('Ravi', 'Kumar', 'ravikumar@hotmail.com', '8899776655'),
('Neha', 'Singh', 'neha.singh@gmail.com', '9345612876'),
('Vikram', 'Joshi', 'vikramjoshi@yahoo.com', '9801234567'),
('Anjali', 'Mehta', 'anjali.mehta@gmail.com', '9812345678'),
('Suresh', 'Naik', 'sureshnaik@gmail.com', '9823456789'),
('Pooja', 'Das', 'pooja.das@yahoo.in', '9834567890'),
('Kiran', 'Yadav', 'kiranyadav@gmail.com', '9845678901'),
('Divya', 'Rao', 'divya.rao@gmail.com', '9856789012'),
('Manish', 'Chopra', 'manish.chopra@gmail.com', '9867890123'),
('Deepika', 'Mishra', 'deepika.mishra@gmail.com', '9878901234'),
('Arjun', 'Pandey', 'arjunpandey@yahoo.com', '9889012345'),
('Meera', 'Nair', 'meera.nair@gmail.com', '9890123456'),
('Karthik', 'Iyer', 'karthik.iyer@gmail.com', '9901234567'),
('Ritika', 'Bansal', 'ritika.bansal@gmail.com', '9912345678'),
('Harsh', 'Garg', 'harshgarg@gmail.com', '9923456789'),
('Aishwarya', 'Kulkarni', 'aishwarya.kulkarni@gmail.com', '9934567890'),
('Tarun', 'Saxena', 'tarun.saxena@yahoo.com', '9945678901'),
('Bhavna', 'Gupta', 'bhavna.gupta@gmail.com', '9956789012'),
('Rohan', 'Thakur', 'rohanthakur@gmail.com', '9967890123'),
('Swati', 'Aggarwal', 'swati.aggarwal@yahoo.com', '9978901234'),
('Nikhil', 'Jain', 'nikhiljain@gmail.com', '9989012345');

CREATE TABLE CustomerAddresses (
    AddressID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    AddressType ENUM('Billing', 'Shipping'),
    Street VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(20),
    Country VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO CustomerAddresses (CustomerID, AddressType, Street, City, State, ZipCode, Country) VALUES
(1,  'Billing',  '123 MG Road',             'Bangalore',     'Karnataka',   '560001', 'India'),
(1,  'Shipping', '456 Residency Rd',        'Bangalore',     'Karnataka',   '560002', 'India'),
(2,  'Billing',  '78 Nehru Street',         'Chennai',       'Tamil Nadu',  '600001', 'India'),
(3,  'Shipping', '45 Park Lane',            'Hyderabad',     'Telangana',   '500001', 'India'),
(4,  'Billing',  '12 Lake View Rd',         'Mumbai',        'Maharashtra', '400001', 'India'),
(5,  'Billing',  '9 Sector 15',             'Gurgaon',       'Haryana',     '122001', 'India'),
(6,  'Shipping', '88 NIBM Road',            'Pune',          'Maharashtra', '411048', 'India'),
(7,  'Billing',  '34 Ring Road',            'Delhi',         'Delhi',       '110001', 'India'),
(8,  'Billing',  '55 Canal Road',           'Kolkata',       'West Bengal', '700001', 'India'),
(9,  'Shipping', '98 Sunrise Blvd',         'Bhopal',        'MP',          '462001', 'India'),
(10, 'Billing',  '100 Sector 9',            'Chandigarh',    'Chandigarh',  '160001', 'India'),
(11, 'Shipping', '21 GT Road',              'Amritsar',      'Punjab',      '143001', 'India'),
(12, 'Billing',  '44 MG Marg',              'Lucknow',       'UP',          '226001', 'India'),
(13, 'Billing',  '39 Station Road',         'Patna',         'Bihar',       '800001', 'India'),
(14, 'Shipping', '19 Airport Road',         'Indore',        'MP',          '452001', 'India'),
(15, 'Billing',  '14 Garden Street',        'Ahmedabad',     'Gujarat',     '380001', 'India'),
(16, 'Billing',  '67 Market Street',        'Nagpur',        'Maharashtra', '440001', 'India'),
(17, 'Shipping', '23 Lalbagh Rd',           'Mysore',        'Karnataka',   '570001', 'India'),
(18, 'Billing',  '77 West End Ave',         'Jaipur',        'Rajasthan',   '302001', 'India'),
(19, 'Billing',  '10 Green Park',           'Noida',         'UP',          '201301', 'India'),
(20, 'Shipping', '53 Phase 3',              'Mohali',        'Punjab',      '160055', 'India'),
(21, 'Billing',  '8 City Centre',           'Surat',         'Gujarat',     '395003', 'India'),
(22, 'Shipping', '95 Eastern Ave',          'Thane',         'Maharashtra', '400603', 'India'),
(23, 'Billing',  '72 Anand Vihar',          'Ghaziabad',     'UP',          '201010', 'India'),
(24, 'Billing',  '60 New Ring Road',        'Rajkot',        'Gujarat',     '360001', 'India'),
(25, 'Shipping', '27 University St',        'Coimbatore',    'Tamil Nadu',  '641001', 'India');

CREATE TABLE ProductCategories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100)
);

INSERT INTO ProductCategories (CategoryName) VALUES
('Electronics'),
('Home Appliances'),
('Clothing'),
('Books'),
('Toys'),
('Sports Equipment'),
('Groceries'),
('Health & Beauty'),
('Furniture'),
('Automotive Accessories');

SELECT * FROM productcategories;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(150),
    Price DECIMAL(10, 2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES ProductCategories(CategoryID)
);

INSERT INTO Products (ProductName, Price, Stock, CategoryID) VALUES
('Samsung Galaxy M14', 12999.00, 120, 1),
('Whirlpool Refrigerator 265L', 23990.00, 40, 2),
('Mens Denim Jeans', 1499.00, 200, 3),
('The Alchemist - Paulo Coelho', 399.00, 150, 4),
('LEGO Classic Bricks Set', 2599.00, 60, 5),
('Yonex Badminton Racket', 1799.00, 80, 6),
('India Gate Basmati Rice 5kg', 599.00, 100, 7),
('Himalaya Face Wash 100ml', 120.00, 180, 8),
('boAt Wireless Earbuds', 2499.00, 90, 1),
('LG Washing Machine 6kg', 17490.00, 30, 2),
('Womens Kurti Set', 1299.00, 130, 3),
('Rich Dad Poor Dad', 349.00, 110, 4),
('Rubiks Cube 3x3', 299.00, 70, 5),
('Cosco Football Size 5', 699.00, 50, 6),
('Aashirvaad Atta 10kg', 429.00, 140, 7),
('Dabur Chyawanprash 1kg', 330.00, 160, 8),
('Noise Smartwatch ColorFit', 3999.00, 65, 1),
('Prestige Induction Cooktop', 2999.00, 35, 2),
('Girls Party Dress', 1099.00, 85, 3),
('Atomic Habits - James Clear', 499.00, 100, 4),
('Hot Wheels Car Pack', 549.00, 90, 5),
('Nivia Basketball Size 7', 999.00, 40, 6),
('Fortune Sunflower Oil 5L', 799.00, 120, 7),
('Patanjali Aloe Vera Gel', 90.00, 170, 8),
('Realme Buds Wireless 2', 1999.00, 75, 1);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    ShippingAddressID INT,
    BillingAddressID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ShippingAddressID) REFERENCES CustomerAddresses(AddressID),
    FOREIGN KEY (BillingAddressID) REFERENCES CustomerAddresses(AddressID)
);

INSERT INTO Orders (CustomerID, Status, OrderDate, ShippingAddressID, BillingAddressID) VALUES
(1,  'Delivered', '2024-01-05 10:30:00',  2,  1),
(2,  'Shipped', '2024-01-15 14:00:00',    3,  3),
(3,  'Pending', '2024-02-01 11:45:00',   4,  4),
(4,  'Delivered', '2024-02-10 16:20:00', 5,  5),
(5,  'Cancelled', '2024-02-25 09:15:00', 6,  6),
(6,  'Delivered', '2024-03-05 13:40:00', 7,  7),
(7,  'Shipped', '2024-03-20 17:30:00',   8,  8),
(8,  'Pending', '2024-04-02 10:50:00',   9,  9),
(9,  'Shipped', '2024-04-18 12:35:00',   10, 10),
(10, 'Delivered', '2024-05-03 15:25:00', 11, 11),
(11, 'Cancelled', '2024-05-21 11:10:00', 12, 12),
(12, 'Pending', '2024-06-06 13:00:00',   13, 13),
(13, 'Shipped', '2024-06-25 10:45:00',   14, 14),
(14, 'Delivered', '2024-07-08 16:15:00', 15, 15),
(15, 'Delivered', '2024-07-23 09:30:00', 16, 16),
(16, 'Shipped', '2024-08-05 14:50:00',   17, 17),
(17, 'Pending',  '2024-08-20 12:00:00',  18, 18),
(18, 'Cancelled', '2024-09-03 11:25:00', 19, 19),
(19, 'Shipped', '2024-09-19 10:10:00',   20, 20),
(20, 'Delivered', '2024-10-07 15:35:00',  21, 21),
(21, 'Pending', '2024-10-25 13:45:00',   22, 22),
(22, 'Shipped', '2024-11-11 16:30:00',   23, 23),
(23, 'Delivered', '2024-11-27 12:20:00', 24, 24),
(24, 'Pending',  '2024-12-05 10:00:00',  25, 25),
(25, 'Delivered', '2024-12-21 14:10:00', 25, 25);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1,  1,  1),
(1,  5,  2),
(2,  3,  1),
(2,  7,  3),
(3,  2,  1),
(3,  6,  1),
(4,  10, 1),
(4,  4,  2),
(5,  8,  1),
(5,  9,  1),
(6,  11, 1),
(6,  15, 2),
(7,  14, 1),
(7,  13, 1),
(8,  16, 3),
(9,  12, 1),
(9,  20, 1),
(10, 17, 1),
(11, 19, 2),
(12, 18, 1),
(13, 21, 1),
(14, 22, 1),
(15, 23, 2),
(16, 24, 1),
(17, 25, 1);


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod ENUM('CreditCard', 'PayPal', 'BankTransfer'),
    Amount DECIMAL(10, 2),
    PaymentStatus ENUM('Pending', 'Completed', 'Failed'),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Payments (OrderID, PaymentDate, PaymentMethod, Amount, PaymentStatus) VALUES
(1,  '2024-01-05 10:30:00', 'CreditCard',   12999.00, 'Completed'),
(2,  '2024-01-15 14:00:00', 'PayPal',       23990.00, 'Completed'),
(3,  '2024-02-01 11:45:00', 'BankTransfer', 1499.00,  'Pending'),
(4,  '2024-02-10 16:20:00', 'CreditCard',   399.00,   'Completed'),
(5,  '2024-02-25 09:15:00', 'PayPal',       2599.00,  'Failed'),
(6,  '2024-03-05 13:40:00', 'CreditCard',   1799.00,  'Completed'),
(7,  '2024-03-20 17:30:00', 'BankTransfer', 599.00,   'Completed'),
(8,  '2024-04-02 10:50:00', 'CreditCard',   120.00,   'Pending'),
(9,  '2024-04-18 12:35:00', 'PayPal',       2499.00,  'Completed'),
(10, '2024-05-03 15:25:00', 'CreditCard',   17490.00, 'Completed'),
(11, '2024-05-21 11:10:00', 'BankTransfer', 1299.00,  'Completed'),
(12, '2024-06-06 13:00:00', 'CreditCard',   349.00,   'Completed'),
(13, '2024-06-25 10:45:00', 'PayPal',       299.00,   'Completed'),
(14, '2024-07-08 16:15:00', 'CreditCard',   699.00,   'Completed'),
(15, '2024-07-23 09:30:00', 'BankTransfer', 429.00,   'Pending'),
(16, '2024-08-05 14:50:00', 'PayPal',       330.00,   'Completed'),
(17, '2024-08-20 12:00:00', 'CreditCard',   3999.00,  'Completed'),
(18, '2024-09-03 11:25:00', 'BankTransfer', 2999.00,  'Completed'),
(19, '2024-09-19 10:10:00', 'CreditCard',   1099.00,  'Completed'),
(20, '2024-10-07 15:35:00', 'PayPal',       499.00,   'Completed'),
(21, '2024-10-25 13:45:00', 'CreditCard',   549.00,   'Completed'),
(22, '2024-11-11 16:30:00', 'BankTransfer', 999.00,   'Completed'),
(23, '2024-11-27 12:20:00', 'PayPal',       799.00,   'Pending'),
(24, '2024-12-05 10:00:00', 'CreditCard',   90.00,    'Completed'),
(25, '2024-12-21 14:10:00', 'BankTransfer', 1999.00,  'Completed');



CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    Carrier VARCHAR(100),
    TrackingNumber VARCHAR(100),
    EstimatedDelivery DATE,
    ShippedDate DATE,
    DeliveryStatus ENUM('Not Shipped', 'In Transit', 'Delivered'),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Shipping (OrderID, Carrier, TrackingNumber, EstimatedDelivery, ShippedDate, DeliveryStatus) VALUES
(1,  'FedEx',    'FDX123456789',  '2024-01-10', '2024-01-05', 'Delivered'),
(2,  'DHL',      'DHL987654321',  '2024-01-20', '2024-01-15', 'In Transit'),
(3,  'UPS',      'UPS456123789',  '2024-02-06', '2024-02-01', 'In Transit'),
(4,  'BlueDart', 'BDT321654987',  '2024-02-15', '2024-02-10', 'Delivered'),
(5,  'FedEx',    'FDX654987321',  '2024-03-01', NULL,          'Not Shipped'),
(6,  'DHL',      'DHL123789456',  '2024-03-10', '2024-03-05', 'Delivered'),
(7,  'UPS',      'UPS789456123',  '2024-03-25', '2024-03-20', 'In Transit'),
(8,  'BlueDart', 'BDT987321654',  '2024-04-07', NULL,          'Not Shipped'),
(9,  'FedEx',    'FDX321789654',  '2024-04-23', '2024-04-18', 'Delivered'),
(10, 'DHL',      'DHL456987123',  '2024-05-08', '2024-05-03', 'In Transit'),
(11, 'UPS',      'UPS123456789',  '2024-05-26', '2024-05-21', 'Delivered'),
(12, 'BlueDart', 'BDT654123987',  '2024-06-11', '2024-06-06', 'In Transit'),
(13, 'FedEx',    'FDX987654321',  '2024-06-30', NULL,          'Not Shipped'),
(14, 'DHL',      'DHL321456987',  '2024-07-13', '2024-07-08', 'Delivered'),
(15, 'UPS',      'UPS654789321',  '2024-07-28', '2024-07-23', 'In Transit'),
(16, 'BlueDart', 'BDT789123456',  '2024-08-10', NULL,          'Not Shipped'),
(17, 'FedEx',    'FDX456123789',  '2024-08-25', '2024-08-20', 'Delivered'),
(18, 'DHL',      'DHL987321654',  '2024-09-08', '2024-09-03', 'In Transit'),
(19, 'UPS',      'UPS321987654',  '2024-09-24', '2024-09-19', 'Delivered'),
(20, 'BlueDart', 'BDT123789456',  '2024-10-12', '2024-10-07', 'In Transit'),
(21, 'FedEx',    'FDX789654123',  '2024-10-30', NULL,          'Not Shipped'),
(22, 'DHL',      'DHL456123789',  '2024-11-16', '2024-11-11', 'Delivered'),
(23, 'UPS',      'UPS987123654',  '2024-12-02', '2024-11-27', 'In Transit'),
(24, 'BlueDart', 'BDT654987321',  '2024-12-10', NULL,          'Not Shipped'),
(25, 'FedEx',    'FDX123789456',  '2024-12-26', '2024-12-21', 'Delivered');


CREATE TABLE ProductReviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    CustomerID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    ReviewDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO ProductReviews (ProductID, CustomerID, Rating, ReviewDate) VALUES
(1,  1,  5, '2024-01-06 10:00:00'),
(2,  2,  4, '2024-01-16 14:30:00'),
(3,  3,  3, '2024-02-02 11:00:00'),
(4,  4,  5, '2024-02-12 16:45:00'),
(5,  5,  4, '2024-02-26 09:30:00'),
(6,  6,  2, '2024-03-06 13:00:00'),
(7,  7,  5, '2024-03-22 17:15:00'),
(8,  8,  3, '2024-04-03 10:10:00'),
(9,  9,  4, '2024-04-19 12:00:00'),
(10, 10, 5, '2024-05-04 15:45:00'),
(11, 11, 4, '2024-05-22 11:10:00'),
(12, 12, 3, '2024-06-07 14:00:00'),
(13, 13, 5, '2024-06-26 10:30:00'),
(14, 14, 4, '2024-07-09 16:00:00'),
(15, 15, 3, '2024-07-24 09:20:00'),
(16, 16, 4, '2024-08-06 14:40:00'),
(17, 17, 2, '2024-08-21 12:50:00'),
(18, 18, 5, '2024-09-04 11:30:00'),
(19, 19, 3, '2024-09-20 10:20:00'),
(20, 20, 4, '2024-10-08 15:00:00'),
(21, 21, 5, '2024-10-26 13:30:00'),
(22, 22, 3, '2024-11-12 16:10:00'),
(23, 23, 4, '2024-11-28 12:15:00'),
(24, 24, 5, '2024-12-06 10:40:00'),
(25, 25, 4, '2024-12-22 14:25:00');

CREATE TABLE InventoryLogs (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    ChangeType ENUM('Restock', 'Sale', 'Return'),
    QuantityChanged INT,
    ChangeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO InventoryLogs (ProductID, ChangeType, QuantityChanged, ChangeDate) VALUES
(1,  'Restock',  50, '2024-01-07 10:15:00'),
(2,  'Sale',     5,  '2024-01-17 14:30:00'),
(3,  'Sale',     3,  '2024-02-03 11:00:00'),
(4,  'Restock',  20, '2024-02-13 16:45:00'),
(5,  'Sale',     10, '2024-02-27 09:30:00'),
(6,  'Return',   2,  '2024-03-07 13:00:00'),
(7,  'Sale',     7,  '2024-03-23 17:15:00'),
(8,  'Restock',  30, '2024-04-04 10:10:00'),
(9,  'Sale',     4,  '2024-04-20 12:00:00'),
(10, 'Restock',  15, '2024-05-05 15:45:00'),
(11, 'Sale',     6,  '2024-05-23 11:10:00'),
(12, 'Return',   1,  '2024-06-08 14:00:00'),
(13, 'Sale',     9,  '2024-06-27 10:30:00'),
(14, 'Restock',  40, '2024-07-10 16:00:00'),
(15, 'Sale',     8,  '2024-07-25 09:20:00'),
(16, 'Return',   3,  '2024-08-07 14:40:00'),
(17, 'Sale',     12, '2024-08-22 12:50:00'),
(18, 'Restock',  25, '2024-09-05 11:30:00'),
(19, 'Sale',     11, '2024-09-21 10:20:00'),
(20, 'Restock',  35, '2024-10-09 15:00:00'),
(21, 'Sale',     13, '2024-10-27 13:30:00'),
(22, 'Return',   2,  '2024-11-13 16:10:00'),
(23, 'Sale',     4,  '2024-11-29 12:15:00'),
(24, 'Restock',  50, '2024-12-07 10:40:00'),
(25, 'Sale',     6,  '2024-12-23 14:25:00');

-- List all customers with their billing and shipping addresses.
USE SALES_PROJECT;
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    b.Street AS BillingStreet,
    s.Street AS ShippingStreet
FROM 
    Customers c
LEFT JOIN CustomerAddresses b 
    ON c.CustomerID = b.CustomerID AND b.AddressType = 'Billing'
LEFT JOIN CustomerAddresses s 
    ON c.CustomerID = s.CustomerID AND s.AddressType = 'Shipping';
    
--  Find all orders along with customer name and total amount paid.

SELECT 
    o.OrderID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    p.Amount AS TotalPaid,
    p.PaymentStatus
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Payments p ON o.OrderID = p.OrderID;
    
-- Get the list of products that are out of stock.

SELECT 
    ProductName, 
    Stock 
FROM Products 
WHERE Stock = 0;

-- Top 5 most ordered products by quantity.

SELECT 
    pr.ProductName, 
    SUM(od.Quantity) AS TotalQuantityOrdered
FROM OrderDetails od
JOIN Products pr ON od.ProductID = pr.ProductID
GROUP BY pr.ProductName
ORDER BY TotalQuantityOrdered DESC
LIMIT 5;
    
-- Number of orders per payment method.

SELECT 
    PaymentMethod, 
    COUNT(*) AS TotalOrders
FROM Payments
GROUP BY PaymentMethod;

-- Find customers who have never placed an order.

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- List total revenue generated by each product category.

SELECT 
    pc.CategoryName,
    SUM(p.Amount) AS TotalRevenue
FROM OrderDetails od
JOIN Products pr ON od.ProductID = pr.ProductID
JOIN ProductCategories pc ON pr.CategoryID = pc.CategoryID
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentStatus = 'Completed'
GROUP BY pc.CategoryName
ORDER BY TotalRevenue DESC;

-- Monthly sales report (order count and total payment).

SELECT 
    DATE_FORMAT(o.OrderDate, '%Y-%m') AS Month,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    SUM(p.Amount) AS TotalRevenue
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentStatus = 'Completed'
GROUP BY Month
ORDER BY Month;

-- Which customer has spent the most?

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    SUM(p.Amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentStatus = 'Completed'
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC
LIMIT 1;

-- List orders that have not been paid (Pending or Failed).

SELECT 
    o.OrderID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    p.PaymentStatus
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentStatus IN ('Pending', 'Failed');

-- Shipping status for each order, with delivery address and estimated delivery date.

SELECT 
    o.OrderID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    s.DeliveryStatus,
    s.EstimatedDelivery,
    ca.Street AS DeliveryAddress
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Shipping s ON o.OrderID = s.OrderID
JOIN CustomerAddresses ca ON o.CustomerID = ca.CustomerID AND ca.AddressType = 'Shipping';

-- List available products by city (i.e., where they can be shipped to).

SELECT 
    pr.ProductName,
    ca.City
FROM Products pr
JOIN OrderDetails od ON pr.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN CustomerAddresses ca ON c.CustomerID = ca.CustomerID AND ca.AddressType = 'Shipping'
GROUP BY pr.ProductName, ca.City;

-- Customer Lifetime Value (CLV): Total amount spent by each customer.

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    SUM(p.Amount) AS LifetimeValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentStatus = 'Completed'
GROUP BY c.CustomerID
ORDER BY LifetimeValue DESC;

-- Find cities with the highest number of orders.

SELECT 
    ca.City,
    COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN CustomerAddresses ca ON c.CustomerID = ca.CustomerID AND ca.AddressType = 'Shipping'
GROUP BY ca.City
ORDER BY OrderCount DESC
LIMIT 5;

