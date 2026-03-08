CREATE DATABASE IF NOT EXISTS devops_app;
USE devops_app;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

INSERT INTO products (name, price) VALUES
('Keyboard', 25.00),
('Mouse', 15.50),
('Monitor', 180.99),
('Laptop Stand', 35.75);