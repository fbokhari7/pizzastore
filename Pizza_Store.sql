CREATE DATABASE Pizza_store;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone)
VALUES
    (76, 'Liam', 'Adams', 'liamadams@example.com', '111-222-3333'),
    (77, 'Olivia', 'Baker', 'oliviabaker@example.com', '222-333-4444'),
    (78, 'Lucas', 'Campbell', 'lucascampbell@example.com', '333-444-5555'),
    (79, 'Sophia', 'Diaz', 'sophiadiaz@example.com', '444-555-6666'),
    (80, 'Ethan', 'Evans', 'ethanevans@example.com', '555-666-7777'),
    (81, 'Isabella', 'Fisher', 'isabellafisher@example.com', '666-777-8888'),
    (82, 'Aiden', 'Gomez', 'aidengomez@example.com', '777-888-9999'),
    (83, 'Amelia', 'Hall', 'ameliahall@example.com', '888-999-0000'),
    (84, 'Michael', 'Hill', 'michaelhill@example.com', '999-000-1111'),
    (85, 'Sophie', 'Kelly', 'sophiekelly@example.com', '000-111-2222'),
    (86, 'Jack', 'Lopez', 'jacklopez@example.com', '111-222-3333'),
    (87, 'Emily', 'Mitchell', 'emilymitchell@example.com', '222-333-4444'),
    (88, 'Noah', 'Morgan', 'noahmorgan@example.com', '333-444-5555'),
    (89, 'Ava', 'Parker', 'avaparker@example.com', '444-555-6666'),
    (90, 'Ella', 'Reed', 'ellareed@example.com', '555-666-7777'),
    (91, 'Mia', 'Rodriguez', 'miarodriguez@example.com', '666-777-8888'),
    (92, 'Benjamin', 'Simmons', 'benjaminsimmons@example.com', '777-888-9999'),
    (93, 'William', 'Stewart', 'williamstewart@example.com', '888-999-0000'),
    (94, 'Grace', 'Taylor', 'gracetaylor@example.com', '999-000-1111'),
    (95, 'Henry', 'Turner', 'henryturner@example.com', '000-111-2222'),
    (96, 'Zoe', 'Watson', 'zoewatson@example.com', '111-222-3333'),
    (97, 'Luna', 'White', 'lunawhite@example.com', '222-333-4444'),
    (98, 'Mason', 'Young', 'masonyoung@example.com', '333-444-5555'),
    (99, 'Harper', 'Clark', 'harperclark@example.com', '444-555-6666'),
    (100, 'Evelyn', 'Lewis', 'evelynlewis@example.com', '555-666-7777')
	;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate TIMESTAMP,
    TotalAmount DECIMAL(10, 2),
    DeliveryAddress VARCHAR(255),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, DeliveryAddress, Status)
VALUES
    (1, 76, '2024-03-15 10:00:00', 25.99, '123 Main St, Anytown, USA', 'Delivered'),
    (2, 77, '2024-03-15 11:00:00', 19.99, '456 Elm St, Othertown, USA', 'In Progress'),
    (3, 78, '2024-03-15 12:00:00', 35.50, '789 Oak St, Anothertown, USA', 'Pending'),
    (4, 79, '2024-03-15 13:00:00', 28.75, '321 Pine St, Somewhere, USA', 'Delivered'),
    (5, 80, '2024-03-15 14:00:00', 22.25, '654 Cedar St, Nowhere, USA', 'In Progress'),
    (6, 81, '2024-03-15 15:00:00', 30.00, '987 Maple St, Elsewhere, USA', 'Pending'),
    (7, 82, '2024-03-15 16:00:00', 18.50, '159 Elm St, Overthere, USA', 'Delivered'),
    (8, 83, '2024-03-15 17:00:00', 26.80, '357 Oak St, Underthere, USA', 'In Progress'),
    (9, 84, '2024-03-15 18:00:00', 33.45, '753 Pine St, Nearthere, USA', 'Pending'),
    (10, 85, '2024-03-15 19:00:00', 21.99, '852 Maple St, Faraway, USA', 'Delivered'),
    (11, 86, '2024-03-15 10:00:00', 27.50, '456 Pine St, Anywhere, USA', 'Pending'),
    (12, 87, '2024-03-15 11:00:00', 24.75, '789 Elm St, Everytown, USA', 'Delivered'),
    (13, 88, '2024-03-15 12:00:00', 19.25, '321 Oak St, Nowhere, USA', 'In Progress'),
    (14, 89, '2024-03-15 13:00:00', 36.00, '654 Maple St, Elsewhere, USA', 'Pending'),
    (15, 90, '2024-03-15 14:00:00', 28.50, '987 Cedar St, Overthere, USA', 'Delivered'),
    (16, 91, '2024-03-15 15:00:00', 23.75, '159 Pine St, Underthere, USA', 'In Progress'),
    (17, 92, '2024-03-15 16:00:00', 31.20, '357 Elm St, Nearthere, USA', 'Pending'),
    (18, 93, '2024-03-15 17:00:00', 20.99, '753 Maple St, Faraway, USA', 'Delivered'),
    (19, 94, '2024-03-15 18:00:00', 29.50, '852 Cedar St, Anothertown, USA', 'In Progress'),
    (20, 95, '2024-03-15 19:00:00', 17.25, '789 Oak St, Somewhere, USA', 'Pending'),
    (21, 96, '2024-03-15 10:00:00', 26.80, '456 Elm St, Anytown, USA', 'Delivered'),
    (22, 97, '2024-03-15 11:00:00', 22.50, '789 Oak St, Othertown, USA', 'In Progress'),
    (23, 98, '2024-03-15 12:00:00', 28.75, '321 Pine St, Anothertown, USA', 'Pending'),
    (24, 99, '2024-03-15 13:00:00', 19.99, '654 Cedar St, Somewhere, USA', 'Delivered'),
    (25, 100, '2024-03-15 14:00:00', 32.50, '987 Maple St, Nowhere, USA', 'In Progress'),
    (26, 81, '2024-03-15 15:00:00', 24.75, '159 Elm St, Elsewhere, USA', 'Pending'),
    (27, 88, '2024-03-15 16:00:00', 30.00, '357 Oak St, Overthere, USA', 'Delivered'),
    (28, 95, '2024-03-15 17:00:00', 18.50, '753 Pine St, Underthere, USA', 'In Progress'),
    (29, 99, '2024-03-15 18:00:00', 27.25, '852 Maple St, Nearthere, USA', 'Pending'),
    (30, 99, '2024-03-15 19:00:00', 21.99, '789 Oak St, Faraway, USA', 'Delivered');





CREATE TABLE Pizzas (
    PizzaID INT PRIMARY KEY,
    PizzaName VARCHAR(100),
    BasePrice DECIMAL(5, 2)
);


INSERT INTO Pizzas (PizzaID, PizzaName, BasePrice)
VALUES
    (1, 'Margherita', 9.99),
    (2, 'Pepperoni', 10.99),
    (3, 'Vegetarian', 11.99),
    (4, 'Hawaiian', 12.99),
    (5, 'Meat Lovers', 13.99),
    (6, 'BBQ Chicken', 12.50),
    (7, 'Supreme', 13.50),
    (8, 'Buffalo Chicken', 11.75),
    (9, 'Mushroom and Olive', 11.25),
    (10, 'Five Cheese', 12.25);



CREATE TABLE Toppings (
    ToppingID INT PRIMARY KEY,
    ToppingName VARCHAR(50),
    PriceExtra DECIMAL(3, 2)
);

INSERT INTO Toppings (ToppingID, ToppingName, PriceExtra)
VALUES
    (1, 'Cheese', 1.50),
    (2, 'Pepperoni', 2.00),
    (3, 'Mushrooms', 1.25),
    (4, 'Onions', 1.00),
    (5, 'Bell Peppers', 1.25),
    (6, 'Sausage', 2.25),
    (7, 'Bacon', 2.50),
    (8, 'Black Olives', 1.75),
    (9, 'Pineapple', 1.50),
    (10, 'Ham', 2.00),
	(11, 'Chicken', 2.50),
    (12, 'Tomatoes', 1.25),
    (13, 'Spinach', 1.75),
    (14, 'Feta Cheese', 2.00),
    (15, 'Ground Beef', 2.25);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, HireDate)
VALUES
	(1, 'John', 'Doe', 'Delivery Driver', '2023-01-15'),
    (2, 'Jane', 'Smith', 'Manager', '2022-05-20'),
    (3, 'Alice', 'Johnson', 'Cook', '2022-03-10'),
    (4, 'Bob', 'Brown', 'Cashier', '2023-02-28'),
    (5, 'Emily', 'Jones', 'Delivery Driver', '2023-04-15'),
	(6, 'Michael', 'Anderson', 'Delivery Driver', '2023-06-10'),
    (7, 'Jessica', 'Martinez', 'Cook', '2022-08-20'),
    (8, 'David', 'Garcia', 'Cashier', '2023-01-05'),
    (9, 'Sarah', 'Clark', 'Delivery Driver', '2022-04-15'),
    (10, 'Daniel', 'Wilson', 'Delivery Driver', '2023-03-18');
	
	
CREATE TABLE Delivery (
    OrderID INT PRIMARY KEY,
    EmployeeID INT,
    DeliveryDate TIMESTAMP,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Delivery (OrderID, EmployeeID, DeliveryDate)
VALUES
    (1, 5, '2024-03-15 12:00:00'),
    (2, 5, '2024-03-15 13:00:00'),
    (3, 5, '2024-03-15 14:00:00'),
    (4, 9, '2024-03-15 15:00:00'),
    (5, 9, '2024-03-15 16:00:00'),
	(6, 9, '2024-03-15 17:00:00'),
    (7, 10, '2024-03-15 18:00:00'),
    (8, 10, '2024-03-15 19:00:00'),
    (9, 9, '2024-03-15 20:00:00'),
    (10, 10, '2024-03-15 21:00:00'),
    (11, 10, '2024-03-15 22:00:00'),
    (12, 1, '2024-03-15 23:00:00'),
    (13, 1, '2024-03-16 00:00:00'),
    (14, 1, '2024-03-16 01:00:00'),
    (15, 1, '2024-03-16 02:00:00'),
    (16, 5, '2024-03-16 03:00:00'),
    (17, 9, '2024-03-16 04:00:00'),
    (18, 1, '2024-03-16 05:00:00'),
    (19, 10, '2024-03-16 06:00:00'),
    (20, 5, '2024-03-16 07:00:00');


CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate TIMESTAMP,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Payment (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod)
VALUES
    (1, 1, '2024-03-15 10:30:00', 25.99, 'Credit Card'),
    (2, 2, '2024-03-15 11:30:00', 19.99, 'Cash'),
    (3, 3, '2024-03-15 12:30:00', 35.50, 'Credit Card'),
    (4, 4, '2024-03-15 13:30:00', 28.75, 'Cash'),
    (5, 5, '2024-03-15 14:30:00', 22.25, 'Credit Card'),
    (6, 6, '2024-03-15 15:30:00', 30.00, 'Cash'),
    (7, 7, '2024-03-15 16:30:00', 18.50, 'Credit Card'),
    (8, 8, '2024-03-15 17:30:00', 26.80, 'Cash'),
    (9, 9, '2024-03-15 18:30:00', 33.45, 'Credit Card'),
    (10, 10, '2024-03-15 19:30:00', 21.99, 'Cash'),
    (11, 11, '2024-03-15 10:30:00', 27.50, 'Credit Card'),
    (12, 12, '2024-03-15 11:30:00', 24.75, 'Cash'),
    (13, 13, '2024-03-15 12:30:00', 19.25, 'Credit Card'),
    (14, 14, '2024-03-15 13:30:00', 36.00, 'Cash'),
    (15, 15, '2024-03-15 14:30:00', 28.50, 'Credit Card'),
    (16, 16, '2024-03-15 15:30:00', 23.75, 'Cash'),
    (17, 17, '2024-03-15 16:30:00', 31.20, 'Credit Card'),
    (18, 18, '2024-03-15 17:30:00', 20.99, 'Cash'),
    (19, 19, '2024-03-15 18:30:00', 29.50, 'Credit Card'),
    (20, 20, '2024-03-15 19:30:00', 17.25, 'Cash'),
    (21, 21, '2024-03-15 10:30:00', 26.80, 'Credit Card'),
    (22, 22, '2024-03-15 11:30:00', 22.50, 'Cash'),
    (23, 23, '2024-03-15 12:30:00', 28.75, 'Credit Card'),
    (24, 24, '2024-03-15 13:30:00', 19.99, 'Cash'),
    (25, 25, '2024-03-15 14:30:00', 32.50, 'Credit Card'),
    (26, 26, '2024-03-15 15:30:00', 24.75, 'Cash'),
    (27, 27, '2024-03-15 16:30:00', 30.00, 'Credit Card'),
    (28, 28, '2024-03-15 17:30:00', 18.50, 'Cash'),
    (29, 29, '2024-03-15 18:30:00', 27.25, 'Credit Card'),
    (30, 30, '2024-03-15 19:30:00', 21.99, 'Cash');




CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY,
    PromotionName VARCHAR(100),
    DiscountPercentage DECIMAL(5, 2)
);
INSERT INTO Promotions (PromotionID, PromotionName, DiscountPercentage)
VALUES
    (1, 'Weekend Special', 15.00),
    (2, 'Holiday Discount', 20.00),
    (3, 'New Customer Offer', 10.00),
    (4, 'Buy One Get One Free', 50.00),
    (5, 'Student Discount', 25.00);

CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(50)
);
INSERT INTO Ingredients (IngredientID, IngredientName)
VALUES
    (1, 'Dough'),
    (2, 'Tomato Sauce'),
    (3, 'Mozzarella Cheese'),
    (4, 'Pepperoni'),
    (5, 'Mushrooms'),
    (6, 'Onions'),
    (7, 'Bell Peppers'),
    (8, 'Italian Sausage'),
    (9, 'Bacon'),
    (10, 'Black Olives'),
    (11, 'Pineapple'),
    (12, 'Ham'),
    (13, 'BBQ Chicken'),
    (14, 'Supreme Mix '),
    (15, 'Buffalo Chicken'),
    (16, 'Mushrooms and Olives Mix'),
    (17, 'Five Cheese Blend')
;
	
	
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(50),
    ContactPhone VARCHAR(20)
);
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, ContactPhone)
VALUES
    (1, 'Dough Supplier Inc.', 'Tom Brady', '555-123-4567'),
    (2, 'Tomato Sauce Co.', 'Rob Gronkowski', '555-234-5678'),
    (3, 'Cheese Master', 'Julian Edelman', '555-345-6789'),
    (4, 'Pepperoni Producers', 'Devin McCourty', '555-456-7890'),
    (5, 'Mushroom Kingdom Farms', 'Dont a Hightower', '555-567-8901'),
    (6, 'Onion Oasis', 'James White', '555-678-9012'),
    (7, 'Pepper Paradise', 'Stephon Gilmore', '555-789-0123'),
    (8, 'Sausage Solutions', 'Malcolm Butler', '555-890-1234'),
    (9, 'Bacon Brothers', 'Billy Bacon', '555-901-2345'),
    (10, 'Olive Orchard', 'Vince Wilfork', '555-012-3456'),
    (11, 'Pineapple Paradise', 'Ty Law', '555-123-4567'),
    (12, 'Ham Heaven', 'Randy Moss', '555-234-5678'),
    (13, 'BBQ Chicken Co.', 'Rodney Harrison', '555-345-6789'),
    (14, 'Supreme Ingredients Ltd.', 'Tedy Bruschi', '555-456-7890'),
    (15, 'Buffalo Chicken Farms', 'Troy Brown', '555-567-8901'),
    (16, 'Mushroom Olive Mix Co.', 'Adam Vinatieri', '555-678-9012'),
    (17, 'Five Cheese Creations', 'Willie McGinest', '555-789-0123'),
    (18, 'Tomato Treasures', 'Richard Seymour', '555-890-1234'),
    (19, 'Spinach Suppliers Inc.', 'Deion Branch', '555-901-2345'),
    (20, 'Feta Farms', 'Lawyer Milloy', '555-012-3456'),
    (21, 'Beef Brothers', 'Matt Light', '555-123-4567');

CREATE TABLE PizzasToppings (
    PizzaID INT,
    ToppingID INT,
    PRIMARY KEY (PizzaID, ToppingID),
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    FOREIGN KEY (ToppingID) REFERENCES Toppings(ToppingID)
);
INSERT INTO PizzasToppings (PizzaID, ToppingID)
VALUES
    (1, 1), -- Margherita with Cheese
    (1, 12), -- Margherita with Tomatoes
    (1, 13), -- Margherita with Basil
    (2, 2), -- Pepperoni
    (2, 1), -- Pepperoni with Cheese
    (3, 3), -- Vegetarian with Mushrooms
    (3, 4), -- Vegetarian with Onions
    (3, 5), -- Vegetarian with Bell Peppers
    (3, 1), -- Vegetarian with Cheese
    (4, 11), -- Hawaiian with Ham
    (4, 9), -- Hawaiian with Pineapple
    (5, 6), -- Meat Lovers with Sausage
    (5, 7), -- Meat Lovers with Bacon
    (5, 10), -- Meat Lovers with Black Olives
    (5, 1), -- Meat Lovers with Cheese
    (6, 13), -- BBQ Chicken with Basil
    (6, 11), -- BBQ Chicken with Chicken
    (7, 2), -- Supreme with Pepperoni
    (7, 8), -- Supreme with Italian Sausage
    (7, 5), -- Supreme with Bell Peppers
    (7, 6), -- Supreme with Mushrooms
    (7, 4), -- Supreme with Onions
    (7, 1), -- Supreme with Cheese
    (8, 11), -- Buffalo Chicken with Chicken
    (8, 14), -- Buffalo Chicken with Feta Cheese
    (9, 6), -- Mushroom and Olive with Mushrooms
    (9, 10), -- Mushroom and Olive with Black Olives
    (9, 1); -- Mushroom and Olive with Cheese
    

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

INSERT INTO PaymentPromotion (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod, PromotionID)
VALUES
    (1, 30, '2024-03-15 10:00:00', 25.99, 'Cash', 1),
    (2, 29, '2024-03-15 11:00:00', 19.99, 'Credit Card', 2),
    (3, 28, '2024-03-15 12:00:00', 35.50, 'Cash', 3),
    (4, 27, '2024-03-15 13:00:00', 28.75, 'Cash', 1),
    (5, 26, '2024-03-15 14:00:00', 22.25, 'Credit Card', 2),
    (6, 25, '2024-03-15 15:00:00', 30.00, 'Credit Card', 3),
    (7, 24, '2024-03-15 16:00:00', 18.50, 'Cash', 1),
    (8, 23, '2024-03-15 17:00:00', 26.80, 'Credit Card', 2),
    (9, 22, '2024-03-15 18:00:00', 33.45, 'Cash', 3),
    (10, 21, '2024-03-15 19:00:00', 21.99, 'Cash', 1),
    (11, 20, '2024-03-15 10:00:00', 27.50, 'Credit Card', 2),
    (12, 19, '2024-03-15 11:00:00', 24.75, 'Cash', 3),
    (13, 18, '2024-03-15 12:00:00', 19.25, 'Credit Card', 1),
    (14, 17, '2024-03-15 13:00:00', 36.00, 'Cash', 2),
    (15, 16, '2024-03-15 14:00:00', 28.50, 'Credit Card', 3),
    (16, 15, '2024-03-15 15:00:00', 23.75, 'Cash', 1),
    (17, 14, '2024-03-15 16:00:00', 31.20, 'Credit Card', 2),
    (18, 13, '2024-03-15 17:00:00', 20.99, 'Cash', 3),
    (19, 12, '2024-03-15 18:00:00', 29.50, 'Cash', 1),
    (20, 11, '2024-03-15 19:00:00', 17.25, 'Credit Card', 2),
    (21, 10, '2024-03-15 10:00:00', 26.80, 'Cash', 3),
    (22, 9, '2024-03-15 11:00:00', 22.50, 'Credit Card', 1),
    (23, 8, '2024-03-15 12:00:00', 28.75, 'Cash', 2),
    (24, 7, '2024-03-15 13:00:00', 19.99, 'Credit Card', 3),
    (25, 6, '2024-03-15 14:00:00', 32.50, 'Cash', 1),
    (26, 5, '2024-03-15 15:00:00', 24.75, 'Credit Card', 2),
    (27, 4, '2024-03-15 16:00:00', 30.00, 'Cash', 3),
    (28, 3, '2024-03-15 17:00:00', 18.50, 'Credit Card', 1),
    (29, 2, '2024-03-15 18:00:00', 27.25, 'Cash', 2),
    (30, 1, '2024-03-15 19:00:00', 21.99, 'Credit Card', 3);
