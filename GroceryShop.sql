CREATE DATABASE GroceryShop;
USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Apple', 0.50),
(2, 'Banana', 0.30),
(3, 'Carrot', 0.20);

ALTER TABLE products
ADD category VARCHAR(50);

TRUNCATE TABLE products;

DROP DATABASE GroceryShop;
