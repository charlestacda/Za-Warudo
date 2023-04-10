/* View for all the records*/
CREATE VIEW EmployeeTimesheetView AS
SELECT Employee.Employee_ID AS 'Employee ID', 
	   Employee.Employee_Name AS 'Employee Name',
       Company.Company_Name AS 'Company Name',
	   Department.Department_Name AS 'Department Name',
       Timesheet.Timesheet_Date AS 'Date',
       Timesheet.Time_In AS 'Time In',
	   Timesheet.Time_Out AS 'Time Out'
FROM Employee
LEFT JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID;

/* View for Flip Philippines, Inc.*/
CREATE VIEW FlipEmployeeTimesheetView AS
SELECT Employee.Employee_ID AS 'Employee ID', 
	   Employee.Employee_Name AS 'Employee Name',
       Company.Company_Name AS 'Company Name',
	   Department.Department_Name AS 'Department Name',
       Timesheet.Timesheet_Date AS 'Date',
       Timesheet.Time_In AS 'Time In',
	   Timesheet.Time_Out AS 'Time Out'
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='Flip Philippines, Inc.';

/* Join statement for CodeNet Philippines, Inc.*/
CREATE VIEW CodeNetEmployeeTimesheetView AS
SELECT Employee.Employee_ID AS 'Employee ID', 
	   Employee.Employee_Name AS 'Employee Name',
       Company.Company_Name AS 'Company Name',
	   Department.Department_Name AS 'Department Name',
       Timesheet.Timesheet_Date AS 'Date',
       Timesheet.Time_In AS 'Time In',
	   Timesheet.Time_Out AS 'Time Out'
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='CodeNet Philippines, Inc.';

/* Join statement for Eatwell Philippines, Inc.*/
CREATE VIEW EatwellEmployeeTimesheetView AS
SELECT Employee.Employee_ID AS 'Employee ID', 
	   Employee.Employee_Name AS 'Employee Name',
       Company.Company_Name AS 'Company Name',
	   Department.Department_Name AS 'Department Name',
       Timesheet.Timesheet_Date AS 'Date',
       Timesheet.Time_In AS 'Time In',
	   Timesheet.Time_Out AS 'Time Out'
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_IDcodenetemployeetimesheetview
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='Eatwell Philippines, Inc.';

