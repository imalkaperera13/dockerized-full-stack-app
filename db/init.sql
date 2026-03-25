USE devops_app;

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  price DECIMAL(10,2)
);

INSERT INTO products (name, price)
SELECT 'Laptop', 1200.00
WHERE NOT EXISTS (SELECT 1 FROM products WHERE name = 'Laptop');

INSERT INTO products (name, price)
SELECT 'Phone', 800.00
WHERE NOT EXISTS (SELECT 1 FROM products WHERE name = 'Phone');

INSERT INTO products (name, price)
SELECT 'Headphones', 150.00
WHERE NOT EXISTS (SELECT 1 FROM products WHERE name = 'Headphones');