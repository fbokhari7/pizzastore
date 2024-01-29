# pizzastore
It is a SQL file that generates relational DB schema for a pizza store. Schema can be used for data science projects. I plan to add data import files to the repo. Data Dictionary below provides overview of each table's structure, including the column names, data types, and descriptions.
                                         

| Table Name       | Column Name          | Data Type          | Description                                         |
|------------------|----------------------|--------------------|-----------------------------------------------------|
| Customers        | CustomerID           | INT, PRIMARY KEY   | Unique identifier for a customer.                    |
|                  | FirstName            | VARCHAR(50)        | First name of the customer.                         |
|                  | LastName             | VARCHAR(50)        | Last name of the customer.                          |
|                  | Email                | VARCHAR(100)       | Email address of the customer.                       |
|                  | Phone                | VARCHAR(20)        | Phone number of the customer.                        |
| Orders           | OrderID              | INT, PRIMARY KEY   | Unique identifier for an order.                     |
|                  | CustomerID           | INT                | Identifier for the customer placing the order.       |
|                  | OrderDate            | TIMESTAMP          | Date and time when the order was placed.             |
|                  | TotalAmount          | DECIMAL(10, 2)     | Total amount of the order.                           |
|                  | DeliveryAddress      | VARCHAR(255)       | Delivery address for the order.                      |
|                  | Status               | VARCHAR(20)        | Status of the order (e.g., "pending", "delivered").  |
| Pizzas           | PizzaID              | INT, PRIMARY KEY   | Unique identifier for a pizza.                       |
|                  | PizzaName            | VARCHAR(100)       | Name of the pizza.                                  |
|                  | BasePrice            | DECIMAL(5, 2)      | Base price of the pizza.                             |
| Toppings         | ToppingID            | INT, PRIMARY KEY   | Unique identifier for a topping.                     |
|                  | ToppingName          | VARCHAR(50)        | Name of the topping.                                 |
|                  | PriceExtra           | DECIMAL(3, 2)      | Extra price for the topping.                          |
| Employees        | EmployeeID           | INT, PRIMARY KEY   | Unique identifier for an employee.                   |
|                  | FirstName            | VARCHAR(50)        | First name of the employee.                          |
|                  | LastName             | VARCHAR(50)        | Last name of the employee.                           |
|                  | Position             | VARCHAR(50)        | Position or role of the employee.                    |
|                  | HireDate             | DATE               | Date when the employee was hired.                    |
| Delivery         | OrderID              | INT, PRIMARY KEY   | Unique identifier for a delivery.                    |
|                  | EmployeeID           | INT                | Identifier for the employee delivering the order.     |
|                  | DeliveryDate         | TIMESTAMP          | Date and time of the delivery.                       |
| Payment          | PaymentID            | INT, PRIMARY KEY   | Unique identifier for a payment.                     |
|                  | OrderID              | INT                | Identifier for the order associated with the payment. |
|                  | PaymentDate          | TIMESTAMP          | Date and time of the payment.                        |
|                  | Amount               | DECIMAL(10, 2)     | Amount of the payment.                               |
|                  | PaymentMethod        | VARCHAR(50)        | Payment method used (e.g., "credit card", "cash").    |
|                  | PromotionID          | INT                | Identifier for the promotion applied to the payment.  |
| Promotions       | PromotionID          | INT, PRIMARY KEY   | Unique identifier for a promotion.                   |
|                  | PromotionName        | VARCHAR(100)       | Name of the promotion.                               |
|                  | DiscountPercentage   | DECIMAL(5, 2)      | Percentage discount offered by the promotion.         |
| Ingredients      | IngredientID         | INT, PRIMARY KEY   | Unique identifier for an ingredient.                 |
|                  | IngredientName       | VARCHAR(50)        | Name of the ingredient.                              |
| Suppliers        | SupplierID           | INT, PRIMARY KEY   | Unique identifier for a supplier.                    |
|                  | SupplierName         | VARCHAR(100)       | Name of the supplier.                                |
|                  | ContactName          | VARCHAR(50)        | Name of the contact person at the supplier.          |
|                  | ContactPhone         | VARCHAR(20)        | Phone number of the contact person.                  |
| PizzasToppings   | PizzaID              | INT                | Identifier for the pizza.                            |
|                  | ToppingID            | INT                | Identifier for the topping.                          |
|                  | PRIMARY KEY          | (PizzaID, ToppingID)| Composite primary key for the many-to-many relationship.|
| PaymentPromotion | PaymentID            | INT, PRIMARY KEY   | Unique identifier for a payment with a promotion.    |
|                  | OrderID              | INT                | Identifier for the order associated with the payment. |
|                  | PaymentDate          | TIMESTAMP          | Date and time of the payment.                        |
|                  | Amount               | DECIMAL(10, 2)     | Amount of the payment.                               |
|                  | PaymentMethod        | VARCHAR(50)        | Payment method used (e.g., "credit card", "cash").    |
|                  | PromotionID          | INT                | Identifier for the promotion applied to the payment.  |
