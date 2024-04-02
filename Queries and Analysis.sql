-- Retrieve the book title, category, and rental price of all available books
SELECT Book_Title, Category, Rental_Price FROM Book WHERE Status = 'Yes';

-- list the employee names and their respective salaries in descending order of salary
SELECT EMP_Name, SALARY FROM EMPLOYEE ORDER BY SALARY DESC;

-- retrieve the book title and the corresponding customer who have issued those books
SELECT issuestatus.Issued_book_name, Customer.Customer_Name 
FROM ISSUESTATUS
INNER JOIN CUSTOMER ON ISSUESTATUS.ISSUED_CUST = CUSTOMER.CUSTOMER_ID;

-- Display the total count of books in each category.
SELECT Category, COUNT(Book_title) FROM book GROUP BY Category;

-- Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT emp_name, position FROM employee WHERE Salary > 50000;

-- List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT customer_name FROM customer WHERE Reg_date < '2022-01-01' AND Customer_Id NOT IN
(SELECT issued_cust FROM issuestatus);

-- Display the branch numbers and the total count of employees in each branch.
ALTER TABLE employee ADD COLUMN branch_no VARCHAR(10);
ALTER TABLE employee ADD CONSTRAINT FOREIGN KEY (branch_no)
REFERENCES branch(branch_no);
DESC employee;

UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E101';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E102';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E103';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E104';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E105';
UPDATE employee SET branch_no = 'B003' WHERE emp_id ='E106';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E107';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E108';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E109';
UPDATE employee SET branch_no = 'B004' WHERE emp_id ='E110';
UPDATE employee SET branch_no = 'B003' WHERE emp_id ='E111';

SELECT * FROM employee;

SELECT branch_no, COUNT(emp_id) FROM employee GROUP BY branch_no;

-- Display the names of customers who have issued books in the month of June 2023.
SELECT customer.Customer_name FROM customer INNER JOIN issuestatus ON 
customer.Customer_Id = issuestatus.Issued_cust WHERE issuestatus.Issue_date >= '2023-06-01' AND 
issuestatus.Issue_date <= '2023-06-30';

-- Retrieve book_title from book table containing 'history'.
SELECT book_title FROM book WHERE Category = 'history';

-- Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT branch_no, COUNT(emp_id) FROM employee GROUP BY branch_no HAVING COUNT(Emp_id) > 5;

SELECT branch_no, COUNT(emp_id) AS employee_count
FROM employee
GROUP BY branch_no;
-- HAVING COUNT(emp_id) > 5;

