CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100)
);
CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(50),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO books (book_id, title) 
VALUES (1, 'The Alchemist'),
       (2, 'The Power of Now'),
       (3, 'Think and Grow Rich'),
       (4, 'Clean Code');

INSERT INTO borrowers (borrower_id, name, book_id) 
VALUES (101, 'Alice', 1),
       (102, 'Bob', 2),
       (103, 'Charlie', NULL);

SELECT 
    b.name AS borrower_name,
    bk.title AS book_title,
    bk.book_id AS book_id
FROM books AS bk
LEFT JOIN borrowers AS b
    ON bk.book_id = b.book_id;

SELECT 
    b.borrower_id AS borrower_id,
    b.name AS borrower_name,
    bk.book_id AS book_id,
    bk.title AS book_title
FROM borrowers AS b
LEFT JOIN books AS bk
    ON b.book_id = bk.book_id;

SELECT book_id, title
FROM books
WHERE book_id NOT IN (
    SELECT book_id FROM borrowers WHERE book_id IS NOT NULL
);

SELECT 
    b.borrower_id AS borrower_id,
    b.name AS borrower_name,
    bk.book_id AS book_id,
    bk.title AS book_title
FROM borrowers AS b
LEFT JOIN books AS bk
    ON b.book_id = bk.book_id;  