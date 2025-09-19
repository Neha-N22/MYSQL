CREATE DATABASE  products;
USE products;
CREATE TABLE productdetails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Productname VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    in_stock ENUM('Yes', 'No') DEFAULT 'Yes'
);
INSERT INTO productdetails (id, Productname, category, price, in_stock) VALUES
('1','Laptop', 'Electronics', 45000, 'Yes'),
('2','Smartphone', 'Electronics', 1500, 'No'),
('3','Earphones', 'Electronics', 300, 'Yes'),
('4','Office Chair', 'Furniture', 4800, 'Yes'),
('5','Notebook', 'Stationery', 40, 'Yes'),
('6','Pen', 'Stationery', 10, 'Yes'),
('7','Water Bottle', 'Home & Kitchen', 250, 'Yes'),
('8','Mixer Grinder', 'Home & Kitchen', 3200, 'No'),
('9','Jacket', 'Clothing', 2200, 'Yes');

SELECT DISTINCT category
FROM productdetails;

SELECT * FROM productdetails
WHERE in_stock = 'Yes' AND price < 500;

SELECT * FROM productdetails
WHERE in_stock = 'No' OR price > 1000;

SELECT Productname, price FROM productdetails
ORDER BY price DESC;

SELECT Productname, price * 1.18 AS price_with_tax
FROM productdetails;



