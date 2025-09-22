CREATE DATABASE bookstore_db;
USE bookstore_db;
CREATE TABLE bookstore(id INT PRIMARY KEY,
                      title VARCHAR(100),
                      author VARCHAR(50),
                      price INT,
                      stock INT);

INSERT INTO bookstore (id, title, author, price, stock) VALUES
(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

UPDATE bookstore
SET price = price + 50, stock = 12
WHERE title = 'Learn SQL';

UPDATE bookstore
SET stock = stock - 2
WHERE price > 500;

DELETE FROM bookstore
WHERE id = 3;