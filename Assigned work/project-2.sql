# Database and Table Creation
create database bookstore_project;
use bookstore_project;

# Authors Table
create table Authors(
AuthorID INT,
Name VARCHAR(255),
Bio TEXT,
primary key(AuthorID)
);
desc Authors;

# Books Table
create table Books(
BookID INT Primary Key,
Title VARCHAR(255),
AuthorID INT,
Price DECIMAL(10,2),
PublicationDate DATE,
foreign key (AuthorID) references Authors(AuthorID)
);
desc books;

# Sales Table
create Table Sales(
SaleID INT Primary Key,
BookID INT,
QuantitySold INT,
SaleDate DATE,
foreign key (BookID) references Books(BookID)
);
desc Sales;

# Schema Modification

# adding the Genre column to the Books table
alter table Books add column Genre VARCHAR(100);
desc Books;

# altering data types
alter table Books modify Price float;
desc Books;

# adding constraints for data integrity
alter table Sales modify BookID INT not null;
alter table Books modify Price float check(price>0);

# Data Management
truncate table Sales;

# Schema Cleanup
ALTER TABLE books DROP FOREIGN KEY books_ibfk_1;
drop table Authors;

# Database Restructuring
alter table Books drop column AuthorID;
alter table Books add column AuthorID INT after Title;
alter table Books add column Author_Name VARCHAR(255) after AuthorID;
alter table Books add column Bio TEXT after Author_Name;
RENAME TABLE Books TO BookRepository;
desc BookRepository;

