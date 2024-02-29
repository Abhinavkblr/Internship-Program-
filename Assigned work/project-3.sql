create database project3;
use project3;
# Authors Table
create table Authors(
AuthorID INT,
Name VARCHAR(255),
Bio TEXT,
primary key(AuthorID)
);

# Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    Price DECIMAL(10,2),
    PublicationDate DATE,
    Genre VARCHAR(100),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

# Sales Table
create Table Sales(
SaleID INT Primary Key,
BookID INT,
QuantitySold INT,
SaleDate DATE,
foreign key (BookID) references Books(BookID)
);
show tables;
# Task 1: Inserting Initial Data with Conditions
# - Populate Initial Data

# Authors Table Data
INSERT INTO Authors (AuthorID, Name, Bio) VALUES 
(1, 'Stephen King', 'Stephen King is an American author known for his horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.'),
(2, 'J.K. Rowling', 'J.K. Rowling is a British author, philanthropist, film producer, television producer, and screenwriter, best known for writing the Harry Potter fantasy series.'),
(3, 'Agatha Christie', 'Agatha Christie was an English writer known for her 66 detective novels and 14 short story collections, particularly those revolving around fictional detectives Hercule Poirot and Miss Marple.'),
(4, 'George Orwell', 'George Orwell was an English novelist, essayist, journalist, and critic, whose work is marked by lucid prose, awareness of social injustice, opposition to totalitarianism, and outspoken support of democratic socialism.'),
(5, 'J.R.R. Tolkien', 'J.R.R. Tolkien was an English writer, poet, philologist, and academic, best known as the author of the classic high fantasy works The Hobbit, The Lord of the Rings, and The Silmarillion.'),
(6, 'F. Scott Fitzgerald', 'F. Scott Fitzgerald was an American novelist, essayist, screenwriter, and short-story writer, best known for his novels depicting the flamboyance and excess of the Jazz Age, a term he popularized.'),
(7, 'Harper Lee', 'Harper Lee was an American novelist widely known for To Kill a Mockingbird, published in 1960. It was immediately successful, winning the Pulitzer Prize, and has become a classic of modern American literature.'),
(8, 'Jane Austen', 'Jane Austen was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century.'),
(9, 'J.D. Salinger', 'J.D. Salinger was an American writer known for his widely-read novel, The Catcher in the Rye.'),
(10, 'Dan Brown', 'Dan Brown is an American author known for his thriller novels, including the Robert Langdon novels Angels & Demons, The Da Vinci Code, The Lost Symbol, Inferno, and Origin.'),
(11, 'Paulo Coelho', 'Paulo Coelho is a Brazilian lyricist and novelist, best known for his novel The Alchemist.'),
(12, 'Suzanne Collins', 'Suzanne Collins is an American television writer and novelist, best known as the author of The New York Times best selling series The Underland Chronicles and The Hunger Games trilogy.'),
(13, 'Charles Dickens', 'Charles Dickens was an English writer and social critic. He created some of the world''s best-known fictional characters and is regarded by many as the greatest novelist of the Victorian era.'),
(14, 'Sarah J. Maas', 'Sarah J. Maas is a celebrated American author known for her captivating young adult fantasy novels, including the "Throne of Glass" and "A Court of Thorns and Roses" series, characterized by strong heroines, intricate world-building, and gripping plots.'),
(15, 'Amy Lea', 'Amy Lea is a prolific British author renowned for her captivating novels and poignant storytelling.'),
(16, 'Suzanne Collins', 'Suzanne Collins is an American television writer and novelist, best known as the author of The New York Times best selling series The Underland Chronicles and The Hunger Games trilogy.');

# Books Table Data
INSERT INTO Books (BookID, Title, AuthorID, Price, PublicationDate, Genre) VALUES 
(1, 'The Shining', 1, 12.99, '1977-01-28', 'Horror'),
(2, 'Harry Potter and the Philosopher''s Stone', 2, 14.99, '1997-06-26', 'Fantasy'),
(3, 'Murder on the Orient Express', 3, 9.99, '1934-01-01', 'Mystery'),
(4, '1984', 4, 10.99, '1949-06-08', 'Dystopian'),
(5, 'It', 1, 11.99, '1986-09-15', 'Horror'),
(6, 'The Lord of the Rings', 5, 16.99, '1954-07-29', 'Fantasy'),
(7, 'The Great Gatsby', 6, 8.99, '1925-04-10', 'Fiction'),
(8, 'To Kill a Mockingbird', 7, 9.49, '1960-07-11', 'Fiction'),
(9, 'Pride and Prejudice', 8, 7.99, '1813-01-28', 'Romance'),
(10, 'The Catcher in the Rye', 9, 10.49, '1951-07-16', 'Fiction'),
(11, 'The Da Vinci Code', 10, 11.99, '2003-03-18', 'Mystery'),
(12, 'The Hobbit', 11, 13.49, '1937-09-21', 'Fantasy'),
(13, 'A Tale of Two Cities', 12, 6.99, '1859-04-30', 'Historical Fiction'),
(14, 'The Alchemist', 13, 9.99, '1988-01-01', 'Fiction'),
(15, 'The Hunger Games', 16, 10.99, '2008-09-14', 'Science Fiction'),
(16,'House of Flame and Shadow',14,9.18,'2024-01-30','Romance Novel'),
(17,'The Catch',15,18.00,'2024-02-13','Contemporary Romance');

# Sales Table Data
INSERT INTO Sales (SaleID, BookID, QuantitySold, SaleDate) VALUES 
(1, 1, 100, '2020-02-25'),
(2, 2, 150, '2020-05-12'),
(3, 3, 75, '2021-08-03'),
(4, 4, 50, '2021-10-20'),
(5, 5, 120, '2022-01-15'),
(6, 6, 90, '2022-03-30'),
(7, 7, 80, '2022-06-05'),
(8, 8, 110, '2023-09-12'),
(9, 9, 70, '2023-11-18'),
(10, 10, 85, '2024-02-02'),
(11, 11, 95, '2024-04-17'),
(12, 12, 65, '2024-06-22'),
(13, 13, 55, '2024-08-05'),
(14, 14, 45, '2024-10-10'),
(15, 15, 75, '2024-12-25'),
(16, 16, 55, '2024-01-30'),
(17, 17, 60, '2024-02-13');

select * from Authors;
select * from Books;
select * from Sales;

# Conditional Insertion for Promotions
# NewReleases Table Structure
CREATE TABLE NewReleases (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    Price DECIMAL(10,2),
    PublicationDate DATE,
    Genre VARCHAR(100)
);

# To Insert books published within the last month into NewReleases table
INSERT INTO NewReleases (BookID, Title, AuthorID, Price, PublicationDate, Genre)
SELECT BookID, Title, AuthorID, Price, PublicationDate, Genre
FROM Books
WHERE PublicationDate >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);

select * from NewReleases;

# Task 2: Updating Inventory and Pricing Based on Sales Performance
# - Dynamic Pricing Update
-- To Update the price of books by 10% that have sold more than 50 copies in the past month
UPDATE Books
SET Price = Price * 1.1
WHERE BookID IN (
    SELECT BookID
    FROM Sales
    WHERE QuantitySold > 50
    AND SaleDate >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
);

select * from Books;

-- Update the price of books by reducing it by 5% for books that have not sold any copies in the past three months
UPDATE Books
SET Price = Price * 0.95 -- reduce the price by 5%
WHERE BookID NOT IN (
    SELECT BookID
    FROM (
        SELECT DISTINCT BookID
        FROM Sales
        WHERE SaleDate >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH)
    ) AS subquery
);

# Task 3: Managing Stock and Sales Records
# Stock Adjustment

-- Add the StockQuantity column to the Books table
ALTER TABLE Books
ADD COLUMN StockQuantity INT;

-- Update the Books table to reduce the stock quantity by the number of sales made
# want to check 
UPDATE Books
JOIN (
    SELECT BookID, SUM(QuantitySold) AS TotalSold
    FROM Sales
    GROUP BY BookID
) AS SalesSummary ON Books.BookID = SalesSummary.BookID
SET StockQuantity = StockQuantity - SalesSummary.TotalSold;

# Sales Record Cleanup
-- Delete sales records older than one year
DELETE FROM Sales
WHERE SaleDate < DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR);

-- Use TRUNCATE TABLE to reset the Sales table at the beginning of a new fiscal year
TRUNCATE TABLE Sales;
select * from books;
