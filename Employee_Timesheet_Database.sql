/* Creates the database and select it to perform SQL operations */
CREATE DATABASE EMPLOYEE_TIMESHEET;
USE EMPLOYEE_TIMESHEET;

/* Creates Table Company */
CREATE TABLE Company(
	Company_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Company_Name VARCHAR(50),
    Company_Description VARCHAR(255),
    Company_Location VARCHAR(255),
    Telephone_Number VARCHAR(50)
);

/* Inserts values to Company */
INSERT INTO Company(Company_Name, Company_Description, Company_Location, Telephone_Number)
VALUES ('Flip Philippines, Inc.', 'Mobile Phone Company', 'Level 2, Unit No. 260, SM City, Governors Drive, Barangay Sampaloc 1, Dasmariñas City', '(049) 549 7253'),
	   ('CodeNet Philippines, Inc.', 'Computer Programming Company', '115 Don Carlos Palanca, Legazpi Village, Makati, 1229 Kalakhang Maynila', '(02) 8540 1835'),
       ('Eatwell Philippines, Inc.', 'Food & Beverage Company', 'No. 31 Plaza Dr, Rockwell Center, Makati, 1200 Metro Manila', '(046) 842 8159');

/* Creates Table Department */
CREATE TABLE Department(
	Department_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Department_Name VARCHAR(50)
);

/* Inserts values to Department */
INSERT INTO Department(Department_Name)
VALUES ('Research & Development'),
	   ('Purchasing'),
       ('Production'),
       ('Administration'),
       ('Human Resrouces'),
       ('Marketing'),
       ('Finances'),
       ('Service Department');

/* Creates Table Employee */
CREATE TABLE Employee(
	Employee_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Company_ID INT,
    Department_ID INT,
    Employee_Name VARCHAR(50),
    User_Name VARCHAR(50),
    User_Password VARCHAR(50),
    FOREIGN KEY (Company_ID) REFERENCES Company(Company_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

/* Inserts values to Employee */
INSERT INTO Employee(Company_ID, Department_ID, Employee_Name, User_Name, User_Password)
VALUES (1, 8, 'Ronald Disomimba', 'ronald.disomimba79', '21519d3fd83341986ff7b8c441ba43f8'),
	   (2, 7, 'Fidel Villaroman', 'fidel.villaroman38', '49ef861ebf6feea93a618d6cedf71a24'),
       (2, 2, 'Bartoli Corporal', 'bartoli.corporal33', '6f549b98aa317cfcae2b86926a2e37dc'),
       (2, 6, 'Francis Caballero', 'francis.caballero44', 'cf9cbebabaf1dc9d2f75478e919cfeae'),
       (1, 4, 'Marino Bernal', 'marino.bernal52', 'c55b071cc1aa00ad4b93c9a8b9582b5e'),
       (2, 7, 'Gage Austing Rana', 'gage.rana55', '8ce24615431da6019398e4776a1528b2'),
       (2, 5, 'Fred Elefante', 'fred.elefante58', '1081625c118f3b5d10fb293ea68de535'),
       (2, 2, 'Rico Dante Ilagan', 'rico.ilagan23', 'd3a07b79c142302e164bfc048dadb546'),
       (3, 4, 'Rudy Jabillo', 'rudy.jabillo83', 'a77cbaac9d1f9d21ff544ed2a278d2b4'),
       (3, 1, 'Teyo Monzon', 'teyo.monzon76', '9970b74a7a8524bfc25f22acd5cf039c'),
       (1, 3, 'Dion Roxas', 'dion.roxas89', 'c4c3765fa4ae488cab0549b2ef14fd27'),
       (1, 1, 'Rage Panaligan', 'rage.panaligan60', 'dcb3a518de9e0b597bb5a9e7540fb217'),
       (3, 5, 'Turi Gerard Macrohon', 'turi.macrohon59', '36467f9464aa80704c94525c390f6f73'),
       (1, 7, 'Shawn Nick Masancay', 'shawn.masancay71', '40156b91e386737ae5165bffc0e135bd'),
       (1, 3, 'Jayden Cabrales', 'jayden.cabrales30', '6c4213bcf9536108f9cb7851ba9ecac3'),
       (1, 1, 'Cyrus Dominguez', 'cyrus.dominguez50', 'e485ec0342fa8b06169e9b4b28aae765'),
       (1, 5, 'Anthony Macalintal', 'anthony.macalintal12', '1367e0c8f2b8d95b5a7a81034bb3d2c7'),
       (3, 6, 'Timothy Emili Tugonon', 'timothy.tugonon24', 'b39d088e32c1479b4a658330725116b6'),
       (2, 8, 'Arnold Amurao', 'arnold.amurao98', '1bab5d99a2dce2b42f242d24b622976c'),
       (2, 8, 'Quinten Perez', 'quinten.perez97', '351176eb0685a4b6cd78d333cadd1bf5');

/* Creates Table Timesheet */
CREATE TABLE Timesheet(
	Timesheet_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Employee_ID INT,
    Timesheet_Date VARCHAR(20),
    Time_In VARCHAR(10),
    Time_Out VARCHAR(10),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

/* Inserts values to Timehseet */
INSERT INTO Timesheet(Employee_ID, Timesheet_Date, Time_In, Time_Out)
VALUES (1, '11/1/2021', '7:10 AM', '3:31 PM'),
	   (2, '11/1/2021', '7:15 AM', '3:33 PM'),
       (3, '11/2/2021', '7:00 AM', '3:33 PM'),
       (4, '11/2/2021', '7:02 AM', '3:37 PM'),
       (5, '11/2/2021', '8:01 AM', '4:01 PM'),
       (6, '11/2/2021', '8:01 AM', '4:06 PM'),
       (7, '11/2/2021', '8:15 AM', '4:02 PM'),
       (8, '11/2/2021', '8:19 AM', '4:06 PM'),
       (9, '11/2/2021', '12:30 AM', '9:10 PM'),
       (10, '11/3/2021', '7:05 AM', '3:31 PM'),
       (11, '11/3/2021', '8:05 AM', '4:11 PM'),
       (12, '11/3/2021', '12:35 AM', '9:06 PM'),
       (13, '11/3/2021', '12:37 AM', '9:38 PM'),
       (14, '11/3/2021', '12:39 AM', '9:21 PM'),
       (15, '11/4/2021', '7:14 AM', '3:39 PM'),
       (16, '11/4/2021', '8:10 AM', '4:14 PM'),
       (17, '11/4/2021', '12:31 AM', '9:15 PM'),
       (18, '11/4/2021', '12:31 AM', '9:14 PM'),
       (19, '11/4/2021', '12:33 AM', '9:22 PM'),
       (20, '11/4/2021', '12:38 AM', '9:20 PM');

