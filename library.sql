create database library;
use library;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    publisher VARCHAR(255),
    ISBN VARCHAR(13),
    copies_available INT
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(10),
    membership_date DATE
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    fine DECIMAL(10, 2),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    role VARCHAR(50),
    phone_number VARCHAR(10)
);

show tables;
describe Books;
describe Members;
describe transactions;

INSERT INTO Books (book_id, title, author, publisher, ISBN, copies_available) VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', '9780262033848', 3),
(2, 'Clean Code', 'Robert C. Martin', 'Prentice Hall', '9780132350884', 5),
(3, 'The Pragmatic Programmer', 'Andy Hunt', 'Addison-Wesley', '9780201616224', 2),
(4, 'Design Patterns', 'Erich Gamma', 'Addison-Wesley', '9780201633610', 4),
(5, 'Database System Concepts', 'Abraham Silberschatz', 'McGraw-Hill', '9780073523323', 3),
(6, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Pearson', '9780134610993', 2),
(7, 'Cracking the Coding Interview', 'Gayle Laakmann McDowell', 'CareerCup', '9780984782857', 6),
(8, 'Data Structures and Algorithms in Java', 'Robert Lafore', 'Addison-Wesley', '9780672324536', 5),
(9, 'Operating System Concepts', 'Abraham Silberschatz', 'John Wiley & Sons', '9781118063330', 4),
(10, 'The C Programming Language', 'Brian W. Kernighan', 'Prentice Hall', '9780131103627', 7),
(11, 'The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley', '9780201896831', 1),
(12, 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', '9780132126953', 3),
(13, 'Compilers: Principles, Techniques, and Tools', 'Alfred V. Aho', 'Addison-Wesley', '9780321486813', 2),
(14, 'Head First Java', 'Kathy Sierra', 'O\'Reilly Media', '9780596009205', 6),
(15, 'Python Programming: An Introduction to Computer Science', 'John Zelle', 'Franklin, Beedle & Associates', '9781590282755', 4),
(16, 'Introduction to the Theory of Computation', 'Michael Sipser', 'Cengage Learning', '9781133187790', 3),
(17, 'Algorithms Unlocked', 'Thomas H. Cormen', 'MIT Press', '9780262518802', 2),
(18, 'Software Engineering', 'Ian Sommerville', 'Pearson', '9780137035151', 5),
(19, 'Introduction to Machine Learning with Python', 'Andreas C. Müller', 'O\'Reilly Media', '9781449369415', 3),
(20, 'The Mythical Man-Month', 'Frederick P. Brooks Jr.', 'Addison-Wesley', '9780201835953', 4);

INSERT INTO Members (member_id, name, address, email, phone_number, membership_date) VALUES
(1, 'Siya Patel', 'Bangalore', 'siya@example.com', '9876543210', '2024-01-15'),
(2, 'Ankit Sharma', 'Mumbai', 'ankit@example.com', '9823456789', '2024-02-12'),
(3, 'Riya Verma', 'Delhi', 'riya@example.com', '9898765432', '2024-03-10'),
(4, 'Arjun Rao', 'Hyderabad', 'arjun@example.com', '9865432109', '2024-04-05'),
(5, 'Neha Singh', 'Pune', 'neha@example.com', '9843210987', '2024-05-01'),
(6, 'Vivek Nair', 'Chennai', 'vivek@example.com', '9832109876', '2024-06-15'),
(7, 'Kriti Jain', 'Jaipur', 'kriti@example.com', '9812345678', '2024-07-20'),
(8, 'Rohan Gupta', 'Kolkata', 'rohan@example.com', '9876543211', '2024-08-10'),
(9, 'Pooja Desai', 'Ahmedabad', 'pooja@example.com', '9823123456', '2024-09-05'),
(10, 'Rahul Mehta', 'Bangalore', 'rahul@example.com', '9898989898', '2024-09-10'),
(11, 'Sneha Kulkarni', 'Mangalore', 'sneha@example.com', '9876767676', '2024-08-25'),
(12, 'Tarun Khanna', 'Lucknow', 'tarun@example.com', '9765454343', '2024-07-30'),
(13, 'Deepika Reddy', 'Visakhapatnam', 'deepika@example.com', '9900990099', '2024-06-18'),
(14, 'Ajay Prasad', 'Coimbatore', 'ajay@example.com', '9844455666', '2024-05-22');


INSERT INTO Transactions (transaction_id, member_id, book_id, issue_date, return_date, fine) VALUES
(1, 1, 2, '2024-09-01', '2024-09-08', 0.00),  
(2, 2, 1, '2024-09-02', '2024-09-09', 0.00),
(3, 3, 3, '2024-09-03', NULL, NULL),
(4, 4, 4, '2024-09-04', '2024-09-10', 0.00),
(5, 5, 5, '2024-09-05', NULL, NULL),
(6, 6, 6, '2024-09-06', '2024-09-13', 0.00),
(7, 7, 7, '2024-09-07', '2024-09-15', 0.00),
(8, 8, 8, '2024-09-08', NULL, NULL),
(9, 9, 9, '2024-09-09', '2024-09-14', 0.00),
(10, 10, 10, '2024-09-10', NULL, NULL),
(11, 11, 11, '2024-09-11', '2024-09-17', 0.00),
(12, 12, 12, '2024-09-12', '2024-09-19', 0.00),
(13, 13, 13, '2024-09-13', NULL, NULL),
(14, 14, 14, '2024-09-14', '2024-09-20', 0.00);

select*from Books;
select*from Members;
select*from Transcations;
