CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE booklist (
    id INT PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    price INT,
    stock INT
);

INSERT INTO booklist (id, title, author, price, stock) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM booklist
WHERE price < 450 AND stock > 30;

UPDATE booklist
SET stock = 45, price = 420
WHERE title = 'Deep Work';

DELETE FROM booklist
WHERE title = 'Ikigai';

SELECT AVG(price) AS avg_price, COUNT(*) AS total_books
FROM booklist;

SELECT * FROM booklist
ORDER BY price DESC
LIMIT 3;

