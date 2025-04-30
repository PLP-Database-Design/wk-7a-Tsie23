-- Question 1 Achieving 1NF (First Normal Form)
-- Create a table adhering to 1NF
CREATE TABLE productDetail_1NF (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    Product VARCHAR(100) NOT NULL
);

-- Insert data into the 1NF-compliant table
INSERT INTO productDetail_1NF (CustomerName, Product)
VALUES
('John Doe', 'Laptop'),
('John Doe', 'Mouse'),
('Jane Smith', 'Tablet'),
('Jane Smith', 'Keyboard'),
('Jane Smith', 'Mouse'),
('Emily Clark', 'Phone');

-- Question 2 Achieving 2NF (Second Normal Form)
-- Create a table adhering to 2NF
CREATE TABLE customers_new(
    customers_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL
);

-- Insert data into the customers table
INSERT INTO customers_new (customer_name)
VALUES
('John Doe'),
('Jane Smith'),
('Emily Clark');

CREATE TABLE orderDetails_2NF(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customers_id INT NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customers_id) REFERENCES customers_new(customers_id)
);

-- Insert data into the orderDetails_2NF table
INSERT INTO orderDetails_2NF (customers_id, product, quantity)
VALUES
(01, 'Laptop', 2),
(01, 'Mouse', 1),
(02, 'Tablet', 3),
(02, 'Keyboard', 1),
(02, 'Mouse', 2),
(03, 'Phone', 1);
