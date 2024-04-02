-- Library Management Porject
CREATE DATABASE LIBRARY;
USE LIBRARY;

/*CREATE REQUIRED TABLES FOR LIBRARY SYSTEM: 1. BRANCH 
                                             2. EMPLOYEE
                                             3. CUSTOMER
                                             4. ISSUESTATUS
                                             5. RETURNSTATUS
                                             6. BOOKS
*/

-- TABLE Branch
CREATE TABLE Branch(
                    Branch_No VARCHAR(10) PRIMARY KEY,
                    Manager_ID VARCHAR(10),
                    Branch_address VARCHAR(30),
                    Contact_No VARCHAR(15));
                    
-- TABLE Employee
CREATE TABLE Employee(
                      Emp_ID VARCHAR(10) PRIMARY KEY,
					  Emp_Name VARCHAR(30),
                      Position VARCHAR(30),
                      Salary DECIMAL(10,2));                      
                      
                      
-- TABLE Customer
CREATE TABLE Customer(
                      Customer_ID VARCHAR(10) PRIMARY KEY,
                      Customer_Name VARCHAR(30),
                      Customer_address VARCHAR(30),
                      Reg_Date DATE);
					
-- TABLE Issuestatus
CREATE TABLE Issuestatus(
                         Issue_Id VARCHAR(10) PRIMARY KEY,
                         Issued_cust VARCHAR(30),
                         Issued_book_name VARCHAR(80),
                         Issue_date DATE,
                         Isbn_book VARCHAR(25),
                         FOREIGN KEY (Issued_cust) REFERENCES customer(Customer_ID) on DELETE CASCADE,
                         FOREIGN KEY (Isbn_book) REFERENCES book(ISBN) on DELETE CASCADE);
                         
-- TABLE ReturnStatus
CREATE TABLE ReturnStatus(
                          Return_id VARCHAR(10) PRIMARY KEY,
                          Return_cust VARCHAR(30),
                          Return_book_name VARCHAR(80),
                          Return_date DATE,
                          isbn_book2 VARCHAR(25),
                          FOREIGN KEY (isbn_book2) REFERENCES book(ISBN) on DELETE CASCADE);

-- TABLE BOOK
CREATE TABLE Book(
                  ISBN VARCHAR(25) PRIMARY KEY,
                  Book_Title VARCHAR(80),
                  Category VARCHAR(30),
                  Rental_Price DECIMAL(10,2),
                  Status ENUM('Yes','No'),
                  Author VARCHAR(30),
                  Publisher VARCHAR(30));		
                  
                  


