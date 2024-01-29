CREATE DATABASE Pizza_Store;

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate TIMESTAMP,
    TotalAmount DECIMAL(10, 2),
    DeliveryAddress VARCHAR(255),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Pizzas table
CREATE TABLE Pizzas (
    PizzaID INT PRIMARY KEY,
    PizzaName VARCHAR(100),
    BasePrice DECIMAL(5, 2)
);

-- Toppings table
CREATE TABLE Toppings (
    ToppingID INT PRIMARY KEY,
    ToppingName VARCHAR(50),
    PriceExtra DECIMAL(3, 2)
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    HireDate DATE
);

-- Delivery table
CREATE TABLE Delivery (
    OrderID INT PRIMARY KEY,
    EmployeeID INT,
    DeliveryDate TIMESTAMP,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Payment table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate TIMESTAMP,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Promotions table
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY,
    PromotionName VARCHAR(100),
    DiscountPercentage DECIMAL(5, 2)
);

-- Ingredients table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(50)
);

-- Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(50),
    ContactPhone VARCHAR(20)
);

-- Payment table with PromotionID
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate TIMESTAMP,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    PromotionID INT
);

-- PizzasToppings table to connect Pizzas and Toppings
CREATE TABLE PizzasToppings (
    PizzaID INT,
    ToppingID INT,
    PRIMARY KEY (PizzaID, ToppingID),
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    FOREIGN KEY (ToppingID) REFERENCES Toppings(ToppingID)
);

-- Payment table with PromotionID
CREATE TABLE PaymentPromotion (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate TIMESTAMP,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    PromotionID INT,  -- New column for PromotionID
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PromotionID) REFERENCES Promotions(PromotionID)  -- Foreign key reference to Promotions table
);
