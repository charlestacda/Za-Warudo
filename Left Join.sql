/* Join statement for all the records*/
SELECT Employee.Employee_ID, Employee.Employee_Name, Company.Company_Name,
		Department.Department_Name, Timesheet.Timesheet_Date, Timesheet.Time_In,
        Timesheet.Time_Out
FROM Employee
LEFT JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID;

/* Join statement for Flip Philippines, Inc.*/
SELECT Employee.Employee_ID, Employee.Employee_Name, Company.Company_Name,
		Department.Department_Name, Timesheet.Timesheet_Date, Timesheet.Time_In,
        Timesheet.Time_Out
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='Flip Philippines, Inc.';

/* Join statement for CodeNet Philippines, Inc.*/
SELECT Employee.Employee_ID, Employee.Employee_Name, Company.Company_Name,
		Department.Department_Name, Timesheet.Timesheet_Date, Timesheet.Time_In,
        Timesheet.Time_Out
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='CodeNet Philippines, Inc.';

/* Join statement for Eatwell Philippines, Inc.*/
SELECT Employee.Employee_ID, Employee.Employee_Name, Company.Company_Name,
		Department.Department_Name, Timesheet.Timesheet_Date, Timesheet.Time_In,
        Timesheet.Time_Out
FROM Employee
INNER JOIN Company ON Employee.Company_ID=Company.Company_ID
LEFT JOIN Department ON Employee.Department_ID=Department.Department_ID
LEFT JOIN Timesheet ON Timesheet.Employee_ID=Employee.Employee_ID
WHERE Company.Company_Name='Eatwell Philippines, Inc.';