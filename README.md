# Library-Management-System-Database
Database creation and querying the sample queries in MySQL.
  
The Library Management System project enables the effective administration of a library's operations. It has features for keeping track of books, clients, 
staff, books being issued, and returns. The system, which uses SQL, keeps an extensive database of books and information on their availability, 
rental price, and other relevant aspects. It also makes it possible to handle library patrons and staff members effectively.

---

## 📑Database Setup and Features:
   1. Create a new database named "Library" to store the information.
   2. Book Management: Add, update, and remove books from the library's collection. Track book details such as title, category, rental price, availability
      status, author, and publisher. 
   3. Customer Management: Maintain a record of library customers, including their names, addresses, registration dates, and issuance history. 
   4. Employee Management: Manage library staff, including employee names, positions, salaries, and branch assignments. 
   5. Book Issuance and Returns: Track customers' book issuance and return. Monitor the status of issued books and ensure timely returns. 
   6. Branch Management: Maintain information about library branches, including branch numbers, manager assignments, addresses, and contact details.

---

## 🏗️ Database Structure:
  1. Book: Stores information about books available in the library.
  2. Branch: Contains information about different library branches
  3. Customer: Contains information about library customers.
  4. Employee: Stores information about library employees.
  5. Issue Status: Tracks the status of book issues. 
  6. Return Status: Tracks the status of book returns.

## 📚 Database Schemas:
  ##### Books Table
  | Field         | Type                | NULL  | KEY     |
  |---------------|---------------------|-------|---------|
  | `ISBN`        | varchar(25)         | NO    | PRIMARY |
  | `Book_Title`  | varchar(80)         | YES   |         |
  | `Category`    | varchar(30)         | YES   |         |
  | `Rental_Price`| Decimal(10,2)       | YES   |         |
  | `Status`      | enum('Yes','No')    | YES   |         |
  | `Author`      | varchar(30)         | YES   |         |
  | `Publisher`   | varchar(30)         | YES   |         |

   ##### Branch Table
   | Field           | Type          | NULL | KEY  |
   |-----------------|---------------|------|------|
   | `Branch_No`     | varchar(10)   | NO   | PRI  |
   | `Manager_ID`    | varchar(10)   | YES  |      |
   | `Branch_address`| varchar(30)   | YES  |      |
   | `Contact_No`    | varchar(15)   | YES  |      |

   ##### Customers Table
   | Field             | Type          | NULL | KEY  |
   |-------------------|---------------|------|------|
   | `Customer_ID`     | varchar(10)   | NO   | PRI  |
   | `Customer_Name`   | varchar(30)   | YES  |      |
   | `Customer_address`| varchar(30)   | YES  |      |
   | `Reg_Date`        | date          | YES  |      |

   ##### Employees Table 
   | Field        | Type          | NULL | KEY  |
   |--------------|---------------|------|------|
   | `Emp_ID`     | varchar(10)   | NO   | PRI  |
   | `Emp_Name`   | varchar(30)   | YES  |      |
   | `Position`   | varchar(30)   | YES  |      |
   | `Salary`     | decimal(10,2) | YES  |      |

   ##### IssueStatus Table
   | Field             | Type          | NULL | KEY  |
   |-------------------|---------------|------|------|
   | `Issue_Id`        | varchar(10)   | NO   | PRI  |
   | `Issued_cust`     | varchar(30)   | YES  | MUL  |
   | `Issued_book_name`| varchar(80)   | YES  |      |
   | `Issue_date`      | date          | YES  |      |
   | `Isbn_book`       | varchar(25)   | YES  | MUL  |

   ##### ReturnStatus Table
   | Field              | Type          | NULL | KEY  |
   |--------------------|---------------|------|------|
   | `Return_id`        | varchar(10)   | NO   | PRI  |
   | `Return_cust`      | varchar(30)   | YES  |      |
   | `Return_book_name` | varchar(80)   | YES  |      |
   | `Return_date`      | date          | YES  |      |
   | `isbn_book2`       | varchar(25)   | YES  | MUL  |
   
---
## ⁉️ Queries and Analysis 
The project includes various SQL queries and data analysis tasks to extract valuable insights from the library's data. Some of the key queries implemented include:
  1. Retrieve the book title, category, and rental price of all available books.
  2. List the employee names and their respective salaries in descending order of salary.
  3. Retrieve the book titles and the corresponding customers who have issued those books.
  4. Display the total count of books in each category.
  5. Retrieve the employee names and positions for the employees whose salaries are above Rs.50,000.
  6. List the names of customers who registered before 2022-01-01 and Have not issued any books yet.
  7. Display the branch numbers and the total count of employees in each branch.
  8. Display the names of customers who have issued books in June 2023.
  9. Retrieve book titles from the book table containing the category history.
  10. Retrieve the branch numbers and the count of employees for branches with more than 5 employees.

---
