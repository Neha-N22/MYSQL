CREATE DATABASE bookstore;
USE bookstore;
CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10,2),
    stock_status VARCHAR(20),
    genre VARCHAR(100)
);
INSERT INTO books (id, title, author, price, stock_status, genre) VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 350, 'In Stock', 'Thriller'),
(2, 'The Alchemist', 'Paulo Coelho', 300, 'Out of Stock', 'Fiction'),
(3, 'Sapiens', 'Yuval Noah Harari', 800, 'In Stock', 'History'),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 250, 'In Stock', 'Finance'),
(5, 'The Psychology of Money', 'Morgan Housel', 720, 'Out of Stock', 'Finance'),
(6, '1984', 'George Orwell', 500, 'In Stock', 'Classic'),
(7, 'To Kill a Mockingbird', 'Harper Lee', 390, 'In Stock', 'Classic'),
(8, 'Becoming', 'Michelle Obama', 950, 'Out of Stock', 'Biography');

SELECT DISTINCT genre 
FROM books;

SELECT * FROM books
WHERE stock_status = 'In Stock' AND price < 400;

SELECT * FROM books
WHERE stock_status = 'Out of Stock' OR price > 700;

SELECT title, price, price * 1.10 AS price_with_gst
FROM books;

SELECT title, price, stock_status
FROM books
ORDER BY price DESC;


