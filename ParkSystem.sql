-- create database ParkSystem;
-- use ParkSystem;


-- -- Table Creation

-- create table City(
-- 	City_Id int primary key,
--     City_Name varchar(255)
-- );

-- create table Organisation(
-- 	Organisation_Id int primary key,
--     Organisation_Name varchar(255),
--     Organisation_Landline varchar(255),
--     City_Id int,
--     foreign key (City_Id) references City(City_Id)
-- );


-- create table Department(
--  Department_Id int primary key,
--     Department_Name varchar(255),
--     Department_Landline varchar(255),
--     Organisation_Id int,
--     
--     foreign key (Organisation_Id) references Organisation(Organisation_Id)
-- );


-- create table User_Info(
-- 	User_Id int primary key,
--     User_Name varchar(255),
--     User_Mobile_No varchar(255),
--     User_Address varchar(255),
--     Department_Id int,
--     
--     foreign key (Department_Id) references Department(Department_Id)
-- );


-- create table Profession_Info(
-- 	Profession_Id int primary key,
--     User_Id int,
--     Profession_Mobile varchar(255),
--     
--     foreign key (User_Id) references User_Info(User_Id)
-- );


-- create table Licence_Validity(
-- 	Licence_Id int primary key,
--     Licence_Office varchar(255),
--     User_Id int,
--     
--     foreign key (User_Id) references User_Info(User_Id)
-- );


-- CREATE TABLE Type_Of_Vehicle (
--     Vehicle_Id INT PRIMARY KEY,
--     User_Id INT,
--     No_Of_Wheels INT,
--     FOREIGN KEY (User_Id) REFERENCES User_Info(User_Id)
-- );

-- CREATE TABLE Vehicle_Emission_Check (
--     Emission_Check_Id INT PRIMARY KEY,
--     Next_Date_Of_Check DATE,
--     Vehicle_Id INT,
--     FOREIGN KEY (Vehicle_Id) REFERENCES Type_Of_Vehicle(Vehicle_Id)
-- );

-- CREATE TABLE Fuel_Type (
--     Fuel_Id INT PRIMARY KEY,
--     Vehicle_Id INT,
--     Fuel_Type VARCHAR(255),
--     FOREIGN KEY (Vehicle_Id) REFERENCES Type_Of_Vehicle(Vehicle_Id)
-- );

-- CREATE TABLE Manufacturer (
--     Manufacturer_Id INT PRIMARY KEY,
--     Name VARCHAR(255),
--     Branch VARCHAR(255),
--     Vehicle_Id INT,
--     FOREIGN KEY (Vehicle_Id) REFERENCES Type_Of_Vehicle(Vehicle_Id)
-- );

-- CREATE TABLE Exclusive_Features (
--     Feature_Id INT PRIMARY KEY,
--     Paint_RGB_Code VARCHAR(255),
--     Model VARCHAR(255),
--     Brand_Name VARCHAR(255),
--     Vehicle_Id INT,
--     FOREIGN KEY (Vehicle_Id) REFERENCES Type_Of_Vehicle(Vehicle_Id)
-- );
-- CREATE TABLE Vehicle (
--     Vehicle_Id INT PRIMARY KEY,
--     User_Id INT,
--     Type_Of_Vehicle_Id INT,
--     Manufacturer_Id INT,
--     Fuel_Id INT,
--     Exclusive_Features_Id INT,
--     FOREIGN KEY (User_Id) REFERENCES User_Info(User_Id),
--     FOREIGN KEY (Type_Of_Vehicle_Id) REFERENCES Type_Of_Vehicle(Vehicle_Id),
--     FOREIGN KEY (Manufacturer_Id) REFERENCES Manufacturer(Manufacturer_Id),
--     FOREIGN KEY (Fuel_Id) REFERENCES Fuel_Type(Fuel_Id),
--     FOREIGN KEY (Exclusive_Features_Id) REFERENCES Exclusive_Features(Feature_Id)
-- );


-- CREATE TABLE Payment_Method (
--     Mode_Id INT PRIMARY KEY,
--     Mode_Type VARCHAR(50)
-- );


-- CREATE TABLE Parking_Lot_Hours (
--     Parking_Id INT PRIMARY KEY,
--     Flexible_Hours VARCHAR(50)
-- );

-- CREATE TABLE Parking_Lot_Fee_Collection (
--     Receipt_Id INT PRIMARY KEY,
--     Vehicle_Id INT,
--     FOREIGN KEY (Vehicle_Id) REFERENCES Parking_Lot_Hours(Parking_Id)
-- );

-- CREATE TABLE Parking_Charges (
--     Payment_Id INT PRIMARY KEY,
--     Rate_Per_Hour DECIMAL(10, 2),
--     Receipt_Id INT,
--     FOREIGN KEY (Receipt_Id) REFERENCES Parking_Lot_Fee_Collection(Receipt_Id)
-- );

-- CREATE TABLE Payment_Transaction (
--     Transaction_Id INT PRIMARY KEY,
--     Transaction_Holder VARCHAR(100),
--     Payment_Id INT,
--     Mode_Id INT,
--     FOREIGN KEY (Payment_Id) REFERENCES Parking_Charges(Payment_Id),
--     FOREIGN KEY (Mode_Id) REFERENCES Payment_Method(Mode_Id)
-- );


-- create table Parking_Reservation_Status (
--     Reservation_Id int primary key,
--     User_Id int ,
--     Vehicle_Id int ,
--     Period_Time time,
--     Period_Date date,
--     foreign key (Vehicle_Id) references Vehicle(Vehicle_Id),
--     foreign key (User_Id) references User_Info(User_Id)
-- );

-- CREATE TABLE Parking (
--     Parking_Id INT PRIMARY KEY,
--     Parking_Lot_Hours_Id INT,
--     Parking_Lot_Fee_Collection_Id INT,
--     FOREIGN KEY (Parking_Lot_Hours_Id) REFERENCES Parking_Lot_Hours(Parking_Id),
--     FOREIGN KEY (Parking_Lot_Fee_Collection_Id) REFERENCES Parking_Lot_Fee_Collection(Receipt_Id)
-- );

-- create table Maintenance_Timing (
--     Maintenance_Id int primary key,
--     Parking_Id int,
--     Period_Time time,
--     Period_Date date,
--     foreign key (Parking_Id) references Parking(Parking_Id)
-- );



-- create table Special_Slot_Allotment (
--     Special_Slot_Id int primary key,
--     User_Id int,
--     Parking_Id int,
--     Vehicle_Id int ,
--     foreign key (Vehicle_Id) references Vehicle(Vehicle_Id),
--     Period_Time time,
--     Period_Date date,
--     foreign key (User_Id) references User_Info(User_Id),
--     foreign key (Parking_Id) references Parking(Parking_Id)
-- );

-- create table Schedule (
-- 	Schedule_Id int primary key,
--     Schedule_Period varchar(255)
-- );


-- create table Guard_Timing (
-- 	Guard_Timing_Id int primary key,
--     Appearance_Timing time,
--     Leaving_Timing time,
--     Schedule_Id int,
--     foreign key (Schedule_Id) references Schedule(Schedule_Id)
-- );


-- create table Security_Guard_Data (
--     Guard_Id int primary key,
--     Parking_Id int,
--     Guard_Timing_Id int,
--     foreign key (Parking_Id) references Parking(Parking_Id),
--     foreign key (Guard_Timing_Id) references Guard_Timing(Guard_Timing_Id)
-- );


-- create table Surveillance_Equipment (
--     Equipment_Id int primary key,
--     Equipment_Name varchar(255),
--     Parking_Id int,
--     foreign key (Parking_Id) references Parking(Parking_Id)
-- );

-- CREATE TABLE Security (
--     Security_Id INT PRIMARY KEY,
--     Parking_Reservation_Status_Id INT,
--     Maintenance_Timing_Id INT,
--     Special_Slot_Allotment_Id INT,
--     Security_Guard_Data_Id INT,
--     Surveillance_Equipment_Id INT,
--     FOREIGN KEY (Parking_Reservation_Status_Id) REFERENCES Parking_Reservation_Status(Reservation_Id),
--     FOREIGN KEY (Maintenance_Timing_Id) REFERENCES Maintenance_Timing(Maintenance_Id),
--     FOREIGN KEY (Special_Slot_Allotment_Id) REFERENCES Special_Slot_Allotment(Special_Slot_Id),
--     FOREIGN KEY (Security_Guard_Data_Id) REFERENCES Security_Guard_Data(Guard_Id),
--     FOREIGN KEY (Surveillance_Equipment_Id) REFERENCES Surveillance_Equipment(Equipment_Id)
-- );


-- -- Inserting data into City
-- INSERT INTO City (City_Id, City_Name) VALUES
-- (1, 'New York'),
-- (2, 'Los Angeles'),
-- (3, 'Chicago');

-- -- Inserting data into Organisation
-- INSERT INTO Organisation (Organisation_Id, Organisation_Name, Organisation_Landline, City_Id) VALUES
-- (1, 'Org A', '123-456-7890', 1),
-- (2, 'Org B', '234-567-8901', 2),
-- (3, 'Org C', '345-678-9012', 3);

-- -- Inserting data into Department
-- INSERT INTO Department (Department_Id, Department_Name, Department_Landline, Organisation_Id) VALUES
-- (1, 'Dept A', '456-789-0123', 1),
-- (2, 'Dept B', '567-890-1234', 2),
-- (3, 'Dept C', '678-901-2345', 3);

-- -- Inserting data into User_Info
-- INSERT INTO User_Info (User_Id, User_Name, User_Mobile_No, User_Address, Department_Id) VALUES
-- (1, 'John Doe', '789-012-3456', '123 Main St, New York', 1),
-- (2, 'Jane Smith', '890-123-4567', '456 Elm St, Los Angeles', 2),
-- (3, 'Bob Johnson', '901-234-5678', '789 Maple St, Chicago', 3);

-- -- Inserting data into Profession_Info
-- INSERT INTO Profession_Info (Profession_Id, User_Id, Profession_Mobile) VALUES
-- (1, 1, '012-345-6789'),
-- (2, 2, '123-456-7890'),
-- (3, 3, '234-567-8901');

-- -- Inserting data into Licence_Validity
-- INSERT INTO Licence_Validity (Licence_Id, Licence_Office, User_Id) VALUES
-- (1, 'Office A', 1),
-- (2, 'Office B', 2),
-- (3, 'Office C', 3);

-- -- Inserting data into Type_Of_Vehicle
-- INSERT INTO Type_Of_Vehicle (Vehicle_Id, User_Id, No_Of_Wheels) VALUES
-- (1, 1, 4),
-- (2, 2, 4),
-- (3, 3, 2);

-- -- Inserting data into Vehicle_Emission_Check
-- INSERT INTO Vehicle_Emission_Check (Emission_Check_Id, Next_Date_Of_Check, Vehicle_Id) VALUES
-- (1, '2024-01-01', 1),
-- (2, '2024-02-01', 2),
-- (3, '2024-03-01', 3);

-- -- Inserting data into Fuel_Type
-- INSERT INTO Fuel_Type (Fuel_Id, Vehicle_Id, Fuel_Type) VALUES
-- (1, 1, 'Petrol'),
-- (2, 2, 'Diesel'),
-- (3, 3, 'Electric');

-- -- Inserting data into Manufacturer
-- INSERT INTO Manufacturer (Manufacturer_Id, Name, Branch, Vehicle_Id) VALUES
-- (1, 'Manufacturer A', 'Branch A', 1),
-- (2, 'Manufacturer B', 'Branch B', 2),
-- (3, 'Manufacturer C', 'Branch C', 3);

-- -- Inserting data into Exclusive_Features
-- INSERT INTO Exclusive_Features (Feature_Id, Paint_RGB_Code, Model, Brand_Name, Vehicle_Id) VALUES
-- (1, '#FF0000', 'Model A', 'Brand A', 1),
-- (2, '#00FF00', 'Model B', 'Brand B', 2),
-- (3, '#0000FF', 'Model C', 'Brand C', 3);

-- -- Inserting data into Vehicle
-- INSERT INTO Vehicle (Vehicle_Id, User_Id, Type_Of_Vehicle_Id, Manufacturer_Id, Fuel_Id, Exclusive_Features_Id) VALUES
-- (1, 1, 1, 1, 1, 1),
-- (2, 2, 2, 2, 2, 2),
-- (3, 3, 3, 3, 3, 3);

-- -- Inserting data into Payment_Method
-- INSERT INTO Payment_Method (Mode_Id, Mode_Type) VALUES
-- (1, 'Credit Card'),
-- (2, 'Debit Card'),
-- (3, 'Cash');

-- -- Inserting data into Parking_Lot_Hours
-- INSERT INTO Parking_Lot_Hours (Parking_Id, Flexible_Hours) VALUES
-- (1, '9am-5pm'),
-- (2, '10am-6pm'),
-- (3, '11am-7pm');

-- -- Inserting data into Parking_Lot_Fee_Collection
-- INSERT INTO Parking_Lot_Fee_Collection (Receipt_Id, Vehicle_Id) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3);

-- -- Inserting data into Parking_Charges
-- INSERT INTO Parking_Charges (Payment_Id, Rate_Per_Hour, Receipt_Id) VALUES
-- (1, 10.00, 1),
-- (2, 12.00, 2),
-- (3, 15.00, 3);

-- -- Inserting data into Payment_Transaction
-- INSERT INTO Payment_Transaction (Transaction_Id, Transaction_Holder, Payment_Id, Mode_Id) VALUES
-- (1, 'John Doe', 1, 1),
-- (2, 'Jane Smith', 2, 2),
-- (3, 'Bob Johnson', 3, 3);

-- -- Inserting data into Parking_Reservation_Status
-- INSERT INTO Parking_Reservation_Status (Reservation_Id, User_Id, Vehicle_Id, Period_Time, Period_Date) VALUES
-- (1, 1, 1, '10:00:00', '2023-11-01'),
-- (2, 2, 2, '11:00:00', '2023-11-02'),
-- (3, 3, 3, '12:00:00', '2023-11-03');

-- -- Inserting data into Parking
-- INSERT INTO Parking (Parking_Id, Parking_Lot_Hours_Id, Parking_Lot_Fee_Collection_Id) VALUES
-- (1, 1, 1),
-- (2, 2, 2),
-- (3, 3, 3);

-- -- Inserting data into Maintenance_Timing
-- INSERT INTO Maintenance_Timing (Maintenance_Id, Parking_Id, Period_Time, Period_Date) VALUES
-- (1, 1, '13:00:00', '2023-11-04'),
-- (2, 2, '14:00:00', '2023-11-05'),
-- (3, 3, '15:00:00', '2023-11-06');

-- -- Inserting data into Special_Slot_Allotment
-- INSERT INTO Special_Slot_Allotment (Special_Slot_Id, User_Id, Parking_Id, Vehicle_Id, Period_Time, Period_Date) VALUES
-- (1, 1, 1, 1, '16:00:00', '2023-11-07'),
-- (2, 2, 2, 2, '17:00:00', '2023-11-08'),
-- (3, 3, 3, 3, '18:00:00', '2023-11-09');

-- -- Inserting data into Schedule
-- INSERT INTO Schedule (Schedule_Id, Schedule_Period) VALUES
-- (1, 'Morning Shift'),
-- (2, 'Afternoon Shift'),
-- (3, 'Night Shift');

-- -- Inserting data into Guard_Timing
-- INSERT INTO Guard_Timing (Guard_Timing_Id, Appearance_Timing, Leaving_Timing, Schedule_Id) VALUES
-- (1, '08:00:00', '16:00:00', 1),
-- (2, '16:00:00', '00:00:00', 2),
-- (3, '00:00:00', '08:00:00', 3);

-- -- Inserting data into Security_Guard_Data
-- INSERT INTO Security_Guard_Data (Guard_Id, Parking_Id, Guard_Timing_Id) VALUES
-- (1, 1, 1),
-- (2, 2, 2),
-- (3, 3, 3);

-- -- Inserting data into Surveillance_Equipment
-- INSERT INTO Surveillance_Equipment (Equipment_Id, Equipment_Name, Parking_Id) VALUES
-- (1, 'Camera A', 1),
-- (2, 'Camera B', 2),
-- (3, 'Camera C', 3);

-- -- Inserting data into Security
-- INSERT INTO Security (Security_Id, Parking_Reservation_Status_Id, Maintenance_Timing_Id, Special_Slot_Allotment_Id, Security_Guard_Data_Id, Surveillance_Equipment_Id) VALUES
-- (1, 1, 1, 1, 1, 1),
-- (2, 2, 2, 2, 2, 2),
-- (3, 3, 3, 3, 3, 3);




-- -- Stored Procedures
-- -- Procedure to display all parking charges from the Parking_Charges table
-- DELIMITER //
-- CREATE PROCEDURE DisplayParkingCharges()
-- BEGIN
--     SELECT * FROM Parking_Charges;
-- END //
-- DELIMITER ;
-- CALL DisplayParkingCharges();

-- -- Procedure to get the count of users from the User_Info table
-- DELIMITER //
-- CREATE PROCEDURE GetUserCount()
-- BEGIN
--     DECLARE user_count INT;
--     SELECT COUNT(*) INTO user_count FROM User_Info;
--     SELECT user_count AS 'Number_of_Users';
-- END //
-- DELIMITER ;
-- CALL GetUserCount();

-- -- -- Functions
-- -- Function to calculate the total parking cost based on rate per hour from the Parking_Charges table
-- DELIMITER //
-- CREATE FUNCTION TotalParkingCost()
-- RETURNS DECIMAL(10, 2)
-- DETERMINISTIC
-- BEGIN
-- DECLARE total_cost DECIMAL(10, 2);
-- SELECT SUM(Rate_Per_Hour) INTO total_cost
-- FROM Parking_Charges;
-- RETURN total_cost;
-- END //
-- SELECT TotalParkingCost();

-- Function to display the schedule period for a given schedule ID from the Schedule table
-- DELIMITER $$
-- CREATE FUNCTION DisplaySchedule(ScheduleId INT)
-- RETURNS VARCHAR(255)
-- READS SQL DATA
-- BEGIN
--     DECLARE ScheduleInfo VARCHAR(255);
--     SELECT Schedule_Period INTO ScheduleInfo
--     FROM Schedule
--     WHERE Schedule_Id = ScheduleId;
--     RETURN ScheduleInfo;
-- END$$
-- DELIMITER ;
-- SELECT Schedule_Id, Schedule_Period
-- FROM Schedule;


-- -- -- Triggers
-- -- Trigger to set a new user ID before inserting a new record into the User_Info table
-- DELIMITER //
-- CREATE TRIGGER BeforeInsertUser1
-- BEFORE INSERT ON User_Info
-- FOR EACH ROW
-- BEGIN
--     DECLARE new_user_id INT;
--     SET new_user_id = (SELECT MAX(User_Id) + 1 FROM User_Info);
--     IF new_user_id IS NULL THEN
--         SET new_user_id = 1;
--     END IF;
--     SET NEW.User_Id = new_user_id;
-- END //
-- DELIMITER ;

-- -- Trigger to insert old user details into the User_Info_Audit table after any update on the User_Info table
-- DELIMITER //
-- CREATE TRIGGER AfterUpdateUserInfo1
-- AFTER UPDATE ON User_Info
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO User_Info_Audit (User_Id, User_Name, User_Mobile_No, User_Address, Department_Id, Update_Time)
--     VALUES (OLD.User_Id, OLD.User_Name, OLD.User_Mobile_No, OLD.User_Address, OLD.Department_Id, NOW());
-- END //
-- DELIMITER ;

-- -- -- Views
-- -- Create a view for the City table
-- CREATE VIEW CityView AS
-- SELECT * FROM City;

-- -- Create a view for the Organisation table
-- CREATE VIEW OrganisationView AS
-- SELECT * FROM Organisation;

-- -- Create a view for the Department table
-- CREATE VIEW DepartmentView AS
-- SELECT * FROM Department;

-- -- Create a view for the User_Info table
-- CREATE VIEW User_InfoView AS
-- SELECT * FROM User_Info;

-- -- Create a view for the Profession_Info table
-- CREATE VIEW Profession_InfoView AS
-- SELECT * FROM Profession_Info;

-- -- Create a view for the Licence_Validity table
-- CREATE VIEW Licence_ValidityView AS
-- SELECT * FROM Licence_Validity;

-- -- Create a view for the Type_Of_Vehicle table
-- CREATE VIEW Type_Of_VehicleView AS
-- SELECT * FROM Type_Of_Vehicle;

-- -- Create a view for the Vehicle_Emission_Check table
-- CREATE VIEW Vehicle_Emission_CheckView AS
-- SELECT * FROM Vehicle_Emission_Check;

-- -- Create a view for the Fuel_Type table
-- CREATE VIEW Fuel_TypeView AS
-- SELECT * FROM Fuel_Type;

-- -- Create a view for the Manufacturer table
-- CREATE VIEW ManufacturerView AS
-- SELECT * FROM Manufacturer;

-- -- Create a view for the Exclusive_Features table
-- CREATE VIEW Exclusive_FeaturesView AS
-- SELECT * FROM Exclusive_Features;

-- -- Create a view for the Vehicle table
-- CREATE VIEW VehicleView AS
-- SELECT * FROM Vehicle;

-- -- Create a view for the Payment_Method table
-- CREATE VIEW Payment_MethodView AS
-- SELECT * FROM Payment_Method;

-- -- Create a view for the Parking_Lot_Hours table
-- CREATE VIEW Parking_Lot_HoursView AS
-- SELECT * FROM Parking_Lot_Hours;

-- -- Create a view for the Parking_Lot_Fee_Collection table
-- CREATE VIEW Parking_Lot_Fee_CollectionView AS
-- SELECT * FROM Parking_Lot_Fee_Collection;

-- -- Create a view for the Parking_Charges table
-- CREATE VIEW Parking_ChargesView AS
-- SELECT * FROM Parking_Charges;

-- -- Create a view for the Payment_Transaction table
-- CREATE VIEW Payment_TransactionView AS
-- SELECT * FROM Payment_Transaction;

-- -- Create a view for the Parking_Reservation_Status table
-- CREATE VIEW Parking_Reservation_StatusView AS
-- SELECT * FROM Parking_Reservation_Status;

-- -- Create a view for the Parking table
-- CREATE VIEW ParkingView AS
-- SELECT * FROM Parking;

-- -- Create a view for the Maintenance_Timing table
-- CREATE VIEW Maintenance_TimingView AS
-- SELECT * FROM Maintenance_Timing;

-- -- Create a view for the Special_Slot_Allotment table
-- CREATE VIEW Special_Slot_AllotmentView AS
-- SELECT * FROM Special_Slot_Allotment;

-- -- Create a view for the Schedule table
-- CREATE VIEW ScheduleView AS
-- SELECT * FROM Schedule;

-- -- Create a view for the Guard_Timing table
-- CREATE VIEW Guard_TimingView AS
-- SELECT * FROM Guard_Timing;

-- -- Create a view for the Security_Guard_Data table
-- CREATE VIEW Security_Guard_DataView AS
-- SELECT * FROM Security_Guard_Data;

-- -- Create a view for the Surveillance_Equipment table
-- CREATE VIEW Surveillance_EquipmentView AS
-- SELECT * FROM Surveillance_Equipment;

-- -- Create a view for the Security table
-- CREATE VIEW SecurityView AS
-- SELECT * FROM Security;