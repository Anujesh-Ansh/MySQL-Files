-- Create Database SIU;

-- Use SIU;

-- CREATE TABLE SIULibrary (
--     Slid INT PRIMARY KEY,
--     Lname VARCHAR(255),
--     Location VARCHAR(255),
--     Noofbranches INT
-- );


-- CREATE TABLE ILibrary (
--     Lid INT PRIMARY KEY,
--     Lname VARCHAR(255),
--     city VARCHAR(255),
--     Area VARCHAR(255),
--     Slid INT,
--     FOREIGN KEY (Slid) REFERENCES SIULibrary(Slid)
-- );


-- CREATE TABLE Books (
--     Bid INT PRIMARY KEY,
--     Bname VARCHAR(255),
--     Price DOUBLE,
--     Lid INT,
--     FOREIGN KEY (Lid) REFERENCES ILibrary(Lid)
-- );


-- CREATE TABLE Noofcopies (
--     Bnid INT PRIMARY KEY,
--     Bid INT,
--     FOREIGN KEY (Bid) REFERENCES Books(Bid),
--     Lid INT,
--     FOREIGN KEY (Lid) REFERENCES ILibrary(Lid)
-- );


-- CREATE TABLE Author (
--     Aid INT PRIMARY KEY,
--     Aname VARCHAR(255),
--     Email VARCHAR(255),
--     Phoneno varchar(20)
-- );

-- CREATE TABLE Publisher (
--     Pid INT PRIMARY KEY,
--     Pname VARCHAR(255)
-- );

-- CREATE TABLE Writes (
--     Bid INT,
--     Aid INT,
--     Pid INT,
--     FOREIGN KEY (Bid) REFERENCES Books(Bid),
--     FOREIGN KEY (Aid) REFERENCES Author(Aid),
--     FOREIGN KEY (Pid) REFERENCES Publisher(Pid)
-- );

-- CREATE TABLE Seller (
--     Sid INT PRIMARY KEY,
--     Slname VARCHAR(255),
--     City varchar(255)
-- );

-- CREATE TABLE Department (
--     Deptid INT PRIMARY KEY,
--     Deptname VARCHAR(255),
--     Institute__name varchar(255),
--     Lid int,
--     foreign key (Lid) references ILibrary(Lid)
-- );

-- CREATE TABLE Members (
--     Memid INT PRIMARY KEY,
--     Lid int,
--     foreign key (Lid) references ILibrary(Lid)
-- );

-- CREATE TABLE Student (
--     Stid INT PRIMARY KEY,
--     Sname Varchar(255),
--     Email Varchar(255),
--     Memid int,
--     Deptid int,
--     foreign key (Memid) references Members(Memid),
--     foreign key (Deptid) references Department (Deptid)
-- );

-- CREATE TABLE Staff (
--     Staid INT PRIMARY KEY,
--     Stname Varchar(255),
--     Email Varchar(255),
--     Memid int,
--     Deptid int,
--     foreign key (Memid) references Members(Memid),
--     foreign key (Deptid) references Department (Deptid)
-- );

-- CREATE TABLE Purchase (
--     Prid INT PRIMARY KEY,
--     Lid INT,
--     Sid INT,
--     Pid INT,
--     Bid INT,
--     quantity INT,
--     PDate DATE,
--     totalcost DECIMAL(10, 2),
--     foreign key (Lid) references ILibrary(Lid),
--     foreign key (Sid) references Seller(Sid),
--     foreign key (Pid) references Publisher(Pid),
--     foreign key (Bid) references Books(Bid)
-- );

-- create table Author_specialization (
-- 	Spec_id int primary key,
--     Aid int,
--     Spec_name varchar(255),
--     foreign key (Aid) references Author(Aid)
-- );

-- CREATE TABLE Issue (
--     Issueid INT PRIMARY KEY,
--     Memid INT,
--     Bid INT,
--     Bnid INT,
--     Lid INT,
--     
--     issuedate DATE,
--     returndate DATE,
--     
--     
--     foreign key (Memid) references Members(Memid),
--     foreign key (Bid) references Books(Bid),
--     foreign key (Bnid) references Noofcopies(Bnid),
--     foreign key (Lid) references ILibrary(Lid)
--     
-- );

-- Create table Sells (
-- 	Sid int,
--     Bid int,
--     Pid int,
--     foreign key (Sid) references Seller(Sid),
--     foreign key (Bid) references Books(Bid),
--     foreign key (Pid) references Publisher(Pid)
-- );

-- create table Employee (
-- 	Empid int primary key,
--     Empname varchar(255),
--     Email varchar(255),
--     Salary decimal(10,2),
--     Lid int,
--     foreign key (Lid) references ILibrary(Lid)
--     
-- );


-- Adding Data

-- Use SIU;

-- INSERT INTO SIULibrary (Slid, Lname, Location, Noofbranches)
-- VALUES (1, 'Pune Central Library', 'Pune', 10);

-- INSERT INTO ILibrary (Lid, Lname, city, Area, Slid)
-- VALUES
-- (1, 'SITLib', 'Pune', 'Lavale', 1),
-- (2, 'SIBMLib', 'Pune', 'Lavale', 1),
-- (3, 'SSACLib', 'Nagpur', 'Ramnagar', 1),
-- (4, 'SSLALib', 'Pune', 'Vimannagar', 1),
-- (5, 'SIBMBLib', 'Bangalore', 'Jaynagar', 1),
-- (6, 'SITMHLib', 'Hyderabad', 'Banjara Hills', 1),
-- (7, 'SIOMLib', 'Pune', 'S.B.Road', 1),
-- (8, 'SITMNLib', 'Noida', 'Golf course area', 1),
-- (9, 'SSLAHLib', 'Hyderabad', 'Gacchibowli', 1), 
-- (10, 'SSBSLib', 'Pune', 'Tithnagar', 1);

-- INSERT INTO Books (Bid, Bname, Price, Lid)
-- VALUES 
-- (1, 'Operating System', 1000, 1),
-- (2, 'Management System', 2500, 2),
-- (3, 'Supply chain management', 500, 8),
-- (4, 'Bioinformatics', 780, 10),
-- (5, 'Tele informatics', 4567, 10),
-- (6, 'IP and Patents formation', 345, 4),
-- (7, 'Engineering Graphics', 2456, 1),
-- (8, 'Customer Management', 3467, 5),
-- (9, 'Buying Pattern Analysis', 456, 8),
-- (10, 'Digital Finance', 600, 8),
-- (11, 'Telecommunication', 1500, 6),
-- (12, 'Algorithms', 6754, 1),
-- (13, 'Child Law', 1800, 4),
-- (14, 'Multimanagers', 2345, 2),
-- (15, 'MicroEconomics', 267, 5),
-- (16, 'Electronics', 2341, 1),
-- (17, 'Structure foundations', 1700, 3),
-- (18, 'Ecohomes', 1234, 3),
-- (19, 'Mobile Communication', 456, 6),
-- (20, 'Labor Laws', 3452, 9),
-- (21, 'Copyrights', 2789, 9),
-- (22, 'Research Laws', 1100, 9),
-- (23, 'DBMS', 700, 1),
-- (24, 'Computer networks', 3451, 1);

-- INSERT INTO Noofcopies (Bnid, Bid, Lid)
-- VALUES
--     (1, 1, 1),
--     (2, 1, 2),
--     (3, 1, 3),
--     (4, 3, 1),
--     (5, 3, 2),
--     (6, 3, 3),
--     (7, 2, 1),
--     (8, 2, 2),
--     (9, 4, 1),
--     (10, 4, 2),
--     (11, 4, 3),
--     (12, 5, 1),
--     (13, 5, 2),
--     (14, 6, 1),
--     (15, 7, 1),
--     (16, 8, 1),
--     (17, 8, 2),
--     (18, 9, 1),
--     (19, 10, 1),
--     (20, 11, 1),
--     (21, 12, 1),
--     (22, 12, 2),
--     (23, 13, 1),
--     (24, 13, 2),
--     (25, 14, 1),
--     (26, 14, 2),
--     (27, 14, 4),
--     (28, 15, 1),
--     (29, 15, 2),
--     (30, 16, 1),
--     (31, 16, 2),
--     (32, 17, 1);

-- INSERT INTO Author (Aid, Aname, Email, Phoneno)
-- VALUES
--     (1, 'Shruti', 'abc@gmail.com', '6447896542'),
--     (2, 'Shivam Kapoor', 'adf@gmail.com', '2345778998'),
--     (3, 'Ameya', 'ert@gmail.com', '23456789087'),
--     (4, 'Pooja Pai', 'edr@gmail.com', '32554565678'),
--     (5, 'Brian Kernighan', 'rtyu@gmail.com', '2143454657'),
--     (6, 'Ken Thompson', 'errt@gmail.com', '2343454565');

-- INSERT INTO Publisher (Pid, Pname)
-- VALUES 
--     (1, 'Tata Macgraw hill'),
--     (2, 'Pragati book store'),
--     (3, 'Prentice Hall'),
--     (4, 'oReilly'),
--     (5, 'Emrald publishing');

-- INSERT INTO Writes (Bid, Aid, Pid)
-- VALUES
--     (1, 1, 2),
--     (2, 2, 3),
--     (3, 5, 2),
--     (4, 6, 4),
--     (5, 1, 5),
--     (6, 1, 2),
--     (7, 4, 1),
--     (8, 2, 2),
--     (9, 5, 5),
--     (10, 6, 4),
--     (11, 1, 1),
--     (12, 4, 2),
--     (13, 5, 5),
--     (14, 6, 2),
--     (15, 3, 1),
--     (16, 4, 2),
--     (17, 6, 5),
--     (18, 2, 4),
--     (19, 5, 1),
--     (20, 1, 2),
--     (21, 3, 5),
--     (22, 5, 2),
--     (23, 6, 1),
--     (24, 3, 3);

-- INSERT INTO Seller (Sid, Slname, City)
-- VALUES 
--     (1, 'Kohinoor', 'Pune'),
--     (2, 'Shiksha', 'Pune'),
--     (3, 'ABP', 'Noida'),
--     (4, 'Technical', 'Hyderabad'),
--     (5, 'Timenowta', 'Bangalore'),
--     (6, 'Kirti', 'Pune');

-- INSERT INTO Department (Deptid, Deptname, Institute__name, Lid)
-- VALUES 
--     (1, 'Civil', 'SIT', 1),
--     (2, 'E&TC', 'SIT', 1),
--     (3, 'Biology', 'SSBS', 10),
--     (4, 'Law', 'SSLA', 4),
--     (5, 'Structure', 'SSAC', 3),
--     (6, 'Finance management', 'SIBM', 2),
--     (7, 'Digital Telecommunications', 'SITMH', 6),
--     (8, 'Clinical Research', 'SSBS', 10);

-- INSERT INTO Members (Memid, Lid)
-- VALUES 
--     (1, 1),
--     (16, 1),
--     (13, 1),
--     (44, 1),
--     (35, 1),
--     (26, 10),
--     (45, 1),
--     (23, 10),
--     (12, 3),
--     (78, 1),
--     (49, 4),
--     (50, 1);

-- INSERT INTO Student (Stid, Sname, Email, Memid, Deptid)
-- VALUES 
--     (1, 'Pooja', 'aswq@gmail.com', 1, 1),
--     (2, 'Satish', 'azsx@gmail.com', 16, 1),
--     (3, 'Amar', 'cvnn@gmail.com', 13, 2),
--     (4, 'Meera', 'lkio@gmail.com', 44, 2),
--     (5, 'Ravi', 'fghj@gmail.com', 35, 2),
--     (6, 'Adit', 'cfgb@gmail.com', 26, 3);

-- INSERT INTO Staff (Staid, Stname, Email, Memid, Deptid)
-- VALUES 
--     (1, 'Satish', 'sddf@gmail.com', 45, 1),
--     (2, 'Rachit', 'zxzxc@gmail.com', 23, 3),
--     (3, 'Seema', 'lkklk@gmail.com', 12, 5),
--     (4, 'Sayali', 'xzcxc@gmail.com', 78, 2),
--     (5, 'Aditya', 'cvvcb@gmail.com', 49, 4),
--     (6, 'Archit', 'gfdfg@gmail.com', 50, 1);

-- INSERT INTO Purchase (Prid, Lid, Sid, Pid, Bid, quantity, PDate, totalcost)
-- VALUES 
--     (1001, 1, 1, 3, 1, 100, '2015-07-12', 70000),
--     (1002, 2, 3, 4, 2, 1000, '2015-04-10', 80000),
--     (1003, 1, 4, 2, 5, 45, '2016-08-01', 4500),
--     (1004, 4, 1, 5, 6, 34, '2016-02-06', 23000),
--     (1005, 3, 4, 1, 9, 20, '2017-03-15', 1200),
--     (1006, 1, 2, 4, 10, 89, '2017-04-20', 4500),
--     (1007, 2, 5, 2, 12, 67, '2018-07-25', 5600),
--     (1008, 3, 2, 4, 15, 45, '2018-03-27', 50000),
--     (1009, 4, 3, 1, 16, 340, '2019-02-12', 7800),
--     (1010, 1, 1, 2, 17, 23, '2020-07-11', 10000);

-- INSERT INTO Author_specialization (Spec_id, Aid, Spec_name)
-- VALUES 
--     (101, 1, 'Technical'),
--     (201, 1, 'Fiction'),
--     (301, 2, 'Non_Fiction'),
--     (401, 3, 'Autobiographies'),
--     (501, 2, 'Technical'),
--     (601, 4, 'Real life stories');

-- INSERT INTO Issue (Issueid, Memid, Bid, Bnid, Lid, issuedate, returndate)
-- VALUES 
--     (205, 44, 2, 1, 2, '2020-03-12', '2020-04-12'),
--     (206, 12, 7, 1, 1, '2020-05-10', null),
--     (207, 78, 4, 3, 10, '2019-03-05', '2019-08-05'),
--     (208, 13, 10, 1, 8, '2019-04-09', '2019-06-09'),
--     (209, 35, 12, 2, 1, '2020-10-07', '2020-12-07'),
--     (210, 45, 2, 2, 2, '2020-04-06', null),
--     (211, 16, 2, 1, 1, '2018-03-12', '2018-04-02');

-- INSERT INTO Sells (Sid, Bid, Pid)
-- VALUES 
-- (1, 1, 2),
-- (5, 3, 2),
-- (3, 2, 3),
-- (2, 6, 5),
-- (1, 10, 5),
-- (4, 14, 1);

-- INSERT INTO Employee (Empid, Empname, Email, Salary, Lid)
-- VALUES 
-- (111, 'Shilpa', 'sdfdsf@gmail.com', 10000, 1),
-- (222, 'Shivani', 'sadsf@gmail.com', 20000, 1),
-- (333, 'Hemani', 'ertet@gmail.com', 500000, 2),
-- (444, 'Rekha', 'scdsf@gmail.com', 35000, 3),
-- (555, 'Anil', 'asd@gmail.com', 45000, 5),
-- (666, 'Suhas', 'fdgfg@gmail.com', 20000, 2);


-- use SIU;

-- Query 1: Which institute libraries are located in Pune city?
-- SELECT ILibrary.Lname
-- FROM ILibrary
-- WHERE ILibrary.city = 'Pune';
-- Output: 

-- Query 2: To which institute does the CS department belong?
-- SELECT ILibrary.Lname
-- FROM Department
-- JOIN ILibrary ON Department.Lid = ILibrary.Lid
-- WHERE Department.Deptname = 'CS';
-- Output: 

-- Query 3: Find all the books whose price is between 800 and 12000?
-- SELECT Books.Bname
-- FROM Books
-- WHERE Books.Price BETWEEN 800 AND 12000;
-- Output: 

-- Query 4: Find out such employees whose salaries are not greater than 50,000/-
-- SELECT Employee.Empname
-- FROM Employee
-- WHERE Employee.Salary <= 50000;
-- Output: 

-- Query 5: Find out such sellers whose name ends with “ta”
-- SELECT Seller.Slname
-- FROM Seller
-- WHERE Seller.Slname LIKE '%ta';
-- Output: 

-- Query 6: Find out such institute libraries where their area information is missing
-- SELECT ILibrary.Lname
-- FROM ILibrary
-- WHERE ILibrary.Area IS NULL;
-- Output: 

-- Query 7: Find out such staff members whose name doesn’t start with “A”
-- SELECT Staff.Stname
-- FROM Staff
-- WHERE Staff.Stname NOT LIKE 'A%';
-- Output: 

-- Query 8: Find out such SIU libraries which have institute libraries located in Bangalore
-- SELECT SIULibrary.Lname
-- FROM SIULibrary
-- JOIN ILibrary ON SIULibrary.Slid = ILibrary.Slid
-- WHERE ILibrary.city = 'Bangalore';
-- Output: 

-- Query 9: Which students belong to the civil department?
-- SELECT Student.Sname
-- FROM Student
-- JOIN Department ON Student.Deptid = Department.Deptid
-- WHERE Department.Deptname = 'Civil';
-- Output: 

-- Query 10: Find out books which are written by “Shruti” and published by "Mcgraw hill"
-- SELECT Books.Bname
-- FROM Books
-- JOIN Writes ON Books.Bid = Writes.Bid
-- JOIN Author ON Writes.Aid = Author.Aid
-- JOIN Publisher ON Writes.Pid = Publisher.Pid
-- WHERE Author.Aname = 'Shruti' AND Publisher.Pname = 'Tata Macgraw hill';
-- Output:

-- use SIU;

-- -- Query 1
-- Select Bname from Books where Price = (select min(Price) from Books where Lid=(Select Lid from ILibrary where Lname = "SIBMLib"));


-- -- Query 2
-- Select Lname from ILibrary where Lid = (Select Lid from Books where Price = ( Select max(Price) from Books));


-- -- Query 3
-- select count(Memid) from Issue where Lid = (Select Lid from ILibrary where Lname = "SITLib");


-- -- Query 4
-- select avg(Price) from Books where Lid = (Select Lid from ILibrary where Lname = "SITMNLib");


-- -- Query 5
-- select sum(totalcost) from Purchase where Lid in (select Lid from ILibrary where Lname = "SITLib") and month(Pdate) between 1 and 6;


-- -- Query 6
-- select count(Bid) from Writes where Aid = (Select Aid from Author where Aname = "Shruti");


-- -- Query 7
-- select max(Price) from Books where Bid in ( Select Bid from Writes where Pid in ( select Pid from Publisher where Pname = "Pragati book store"));


-- -- Query 8
-- select sum(Bnid) from Noofcopies where Lid in (Select Lid from ILibrary where Lname ="SITLib");


-- -- Query 9
-- select avg(Price) from Books where Bid in ( Select Bid from Writes where Aid in (Select Aid from Author where Aname ="Shivam Kapoor"));



-- -- Query 10
-- select sum(quantity) from Purchase where Sid in ( Select Sid from Seller where City ="Pune");



-- -- Query 11
-- select upper(Sname) from Student where Deptid in (Select Deptid from Department where Institute__name = "SSBS");



-- -- Query 12
-- select date_add(issuedate, interval 2 month) from Issue where Bid in (Select Bid from Writes where Aid in (select Aid from Author where Aname ="Shivam Kapoor"));



-- -- Query 13
-- select last_day(Issuedate) from Issue where Memid in (select Memid from Student where Sname ="Satish");



-- -- Query 14
-- select count(Bid) from Issue where (year(Issuedate) = 2010 or year(Issuedate) = 2020) and (month(Issuedate) between 1 and 3);



-- -- Query 15
-- select count(Bid) from Noofcopies where Bnid < 5 and Lid in (select Lid from ILibrary where Lname = "SIBMLib" or "SIBMBLib");


-- use SIU; 


-- Query 1
-- SELECT Sname FROM Student JOIN Department ON Student.Deptid = Department.Deptid WHERE Department.Deptname = 'E&TC';

-- Query 2
-- SELECT Bname FROM Books WHERE Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SITLib');

-- Query 3
-- SELECT Bname FROM Books JOIN Noofcopies ON Books.Bid = Noofcopies.Bid WHERE Books.Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SITLib') GROUP BY Bname HAVING COUNT(Noofcopies.Bnid) < 3;

-- Query 4
-- SELECT Slname FROM Seller WHERE City = (SELECT city FROM ILibrary WHERE Lname = 'SITLib');

-- Query 5
-- SELECT DISTINCT Slname FROM Seller JOIN Purchase ON Seller.Sid = Purchase.Sid WHERE Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SITLib');

-- Query 6
-- SELECT Bname FROM Books JOIN Writes ON Books.Bid = Writes.Bid JOIN Author ON Writes.Aid = Author.Aid JOIN Publisher ON Writes.Pid = Publisher.Pid WHERE Author.Aname = 'Brian Kernighan' AND Publisher.Pname = 'Tata Macgraw hill';

-- Query 7
-- SELECT Bname FROM Books JOIN Writes ON Books.Bid = Writes.Bid JOIN Author ON Writes.Aid = Author.Aid WHERE Author.Aname = 'Ken Thompson';

-- Query 8
-- SELECT Bname FROM Books JOIN Issue ON Books.Bid = Issue.Bid JOIN Student ON Issue.Memid = Student.Memid WHERE Student.Sname = 'Mayank';

-- Query 9
-- SELECT Bname FROM Books JOIN Issue ON Books.Bid = Issue.Bid JOIN Staff ON Issue.Memid = Staff.Memid JOIN Department ON Staff.Deptid = Department.Deptid WHERE Department.Institute__name = 'SLS';

-- Query 10
-- SELECT DISTINCT Publisher.Pname FROM Publisher JOIN Writes ON Publisher.Pid = Writes.Pid JOIN Purchase ON Writes.Bid = Purchase.Bid JOIN ILibrary ON Purchase.Lid = ILibrary.Lid WHERE ILibrary.Lname = 'SSBSLib';

-- Query 11
-- SELECT DISTINCT Institute__name
-- FROM Department
-- WHERE Deptid IN (
--     SELECT Deptid
--     FROM Staff
--     WHERE Memid IN (
--         SELECT Memid
--         FROM Issue
--         WHERE Bid = 4444
--     )
--     UNION
--     SELECT Deptid
--     FROM Student
--     WHERE Memid IN (
--         SELECT Memid
--         FROM Issue
--         WHERE Bid = 4444
--     )
-- );

-- Query 12
-- SELECT DISTINCT Seller.Slname FROM Seller JOIN Purchase ON Seller.Sid = Purchase.Sid JOIN ILibrary ON Purchase.Lid = ILibrary.Lid WHERE ILibrary.city = Seller.City;

-- Query 13
-- SELECT DISTINCT Author.Aname FROM Author JOIN Writes ON Author.Aid = Writes.Aid JOIN Books ON Writes.Bid = Books.Bid WHERE Books.Price > 500;

-- Query 1
-- SELECT Members.Memid FROM Members JOIN Issue ON Members.Memid = Issue.Memid JOIN Books ON Issue.Bid = Books.Bid JOIN Department ON Books.Lid = Department.Lid WHERE Department.Deptname = 'E&TC' AND Department.Institute__name = 'SITM';

-- Query 2
-- SELECT Books.Bname FROM Books JOIN ILibrary ON Books.Lid = ILibrary.Lid WHERE ILibrary.Lname = 'SITLib';

-- Query 3
-- SELECT Books.Bname FROM Books JOIN Writes ON Books.Bid = Writes.Bid JOIN Author ON Writes.Aid = Author.Aid WHERE Author.Aname = 'Ken Coel';

-- Query 4
-- SELECT Employee.Empname FROM Employee WHERE Employee.Salary < (select MAX(Employee.Salary) from Employee);

-- Query 5
-- SELECT DISTINCT B1.Bname FROM Books AS B1 JOIN Books AS B2 ON B1.Price > B2.Price;

-- Query 6
-- SELECT Employee.Empname FROM Employee WHERE Employee.Salary > ALL (SELECT Employee.Salary FROM Employee JOIN ILibrary ON Employee.Lid = ILibrary.Lid JOIN Department ON ILibrary.Lid = Department.Lid WHERE Department.Deptname = 'CS');



-- Query 8
-- SELECT Purchase.Prid FROM Purchase WHERE Purchase.totalcost > ALL (SELECT Purchase.totalcost FROM Purchase JOIN ILibrary ON Purchase.Lid = ILibrary.Lid WHERE ILibrary.Lname = 'SITLib');

-- Query 9
-- SELECT SIULibrary.Lname FROM SIULibrary WHERE SIULibrary.Location = 'Pune' AND EXISTS (SELECT 1 FROM ILibrary WHERE ILibrary.Lname = 'SIOMLib' AND ILibrary.Slid = SIULibrary.Slid );

-- Query 10
-- SELECT Staff.Stname FROM Staff WHERE Staff.Stname LIKE 'S%' AND NOT EXISTS (SELECT 1 FROM Department WHERE Staff.Deptid = Department.Deptid AND Department.Deptname = 'CS');

-- Query 11
-- SELECT Books.Bname FROM Books JOIN Issue ON Books.Bid = Issue.Bid JOIN Student ON Issue.Memid = Student.Memid WHERE Student.Sname = 'Satish';

-- Query 12
-- SELECT Seller.Slname FROM Seller JOIN Purchase ON Seller.Sid = Purchase.Sid JOIN ILibrary ON Purchase.Lid = ILibrary.Lid JOIN Publisher ON Purchase.Pid = Publisher.Pid WHERE ILibrary.Lname = 'SITLib' AND Publisher.Pname = 'Pragati book store';

-- Query 13
-- SELECT Books.Bname FROM Books JOIN Issue ON Books.Bid = Issue.Bid JOIN Staff ON Issue.Memid = Staff.Memid JOIN Department ON Staff.Deptid = Department.Deptid WHERE Department.Deptname = 'Civil' AND Department.Institute__name = 'SIT';

-- Query 14
-- SELECT Seller.Slname FROM Seller JOIN ILibrary ON Seller.City = ILibrary.city WHERE ILibrary.Lname = 'SITLib';

-- Query 15
-- SELECT Publisher.Pname FROM Publisher JOIN Writes ON Publisher.Pid = Writes.Pid JOIN Books ON Writes.Bid = Books.Bid JOIN Purchase ON Books.Bid = Purchase.Bid JOIN Seller ON Purchase.Sid = Seller.Sid WHERE Seller.Slname = 'Kohinoor' AND Purchase.Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SITLib');

-- Query 16
-- SELECT Books.Bname FROM Books JOIN Writes ON Books.Bid = Writes.Bid JOIN Author ON Writes.Aid = Author.Aid JOIN Publisher ON Writes.Pid = Publisher.Pid WHERE Author.Aname = 'Shivam Kapoor' AND Publisher.Pname = 'Pragati book store';

-- Query 17
-- SELECT * FROM Purchase WHERE MONTH(PDate) = 7 AND Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SIBMLib');

-- Query 18
-- SELECT Department.Institute__name FROM Department JOIN Student ON Department.Deptid = Student.Deptid JOIN Issue ON Student.Memid = Issue.Memid WHERE Issue.Bid = 2;

-- Query 19
-- UPDATE Books SET Price = Price * 1.10;

-- Query 20
-- UPDATE Department SET Institute__name = 'SSBS' WHERE Deptname = 'Biology';

-- Query 21
-- UPDATE Employee SET Salary = Salary * 1.25 WHERE Lid = (SELECT Lid FROM ILibrary WHERE Lname = 'SITLib');

-- Query 22
-- DELETE FROM Purchase WHERE YEAR(PDate) = 2016;

-- Query 23
-- DELETE FROM Issue WHERE YEAR(returndate) = 2017;
