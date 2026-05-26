/*
First Insert table 

///////////////////////////
INSERT INTO Departments (DepartmentName) VALUES
('Human Resources'),
('Finance'),
('IT'),
('Marketing'),
('Sales'),
('Customer Support'),
('Operations'),
('Logistics'),
('Legal'),
('R&D');

GO


--Second Insert to table
USE [StaffManageMG];
GO

INSERT INTO [dbo].[Roles] ([RoleName]) 
VALUES
    ('Administrator'),
    ('Manager'),
    ('HR'),
    ('Accountant'),
    ('Team Leader'),
    ('Senior Staff'),
    ('Junior Staff'),
    ('Intern'),
    ('Security'),
    ('Cleaner');
GO


--Third insert into table
INSERT INTO Employees (
    FirstName, LastName, DateOfBirth, Position, HireDate, Salary,
    Email, PhoneNumber, Status, DepartmentID, RoleID
) VALUES
('Jane', 'Smith', '1990-07-20', 'Assistant Manager', '2016-09-15', 65000.00, 'jane.smith@example.com', '1234567891', 'Active', 2, 2),
('Mark', 'Johnson', '1988-11-05', 'Team Lead', '2017-01-10', 70000.00, 'mark.johnson@example.com', '1234567892', 'Active', 3, 3),
('Emily', 'Davis', '1992-02-25', 'Senior Developer', '2018-03-22', 75000.00, 'emily.davis@example.com', '1234567893', 'Active', 3, 4),
('Michael', 'Brown', '1995-06-12', 'Junior Developer', '2019-07-01', 55000.00, 'michael.brown@example.com', '1234567894', 'Active', 3, 5),
('Sarah', 'Wilson', '1993-09-18', 'HR Specialist', '2020-04-15', 60000.00, 'sarah.wilson@example.com', '1234567895', 'Active', 1, 6),
('David', 'Lee', '1987-12-30', 'Accountant', '2017-08-09', 58000.00, 'david.lee@example.com', '1234567896', 'Active', 2, 7),
('Laura', 'Martinez', '1991-10-05', 'Sales Executive', '2021-05-17', 50000.00, 'laura.martinez@example.com', '1234567897', 'Active', 5, 8),
('James', 'Anderson', '1984-01-22', 'Customer Support Rep', '2021-09-01', 45000.00, 'james.anderson@example.com', '1234567898', 'Active', 6, 9),
('Linda', 'Taylor', '1989-08-14', 'Legal Advisor', '2022-02-11', 70000.00, 'linda.taylor@example.com', '1234567899', 'Active', 9, 10),
('Kon', 'Papa', '1995-05-20', 'Developer', '2025-08-21 00:01:19.3333333', 4000.00, 'kon.papa@example.com', '0123456789', 'Active', 1, 2),
('SROEUN', 'Vathana', '2003-01-29 16:24:38.1380000', 'string', '2025-09-20 16:24:38.1380000', 1000.00, 'sroeun.vatahana@gmail.com', '0712257282', 'active', 1, 1);

SET IDENTITY_INSERT Attendances ON;

INSERT INTO Attendances (AttendanceID, ClockInTime, ClockOutTime, EmployeeID) VALUES
(16, '2025-11-11 01:33:00.0000000', '2025-10-13 08:35:00.0000000', 10),
(4, '2025-08-01 08:15:00.0000000', '2025-08-01 17:05:00.0000000', 3),
(5, '2025-08-01 08:10:00.0000000', '2025-08-01 16:55:00.0000000', 4),
(6, '2025-08-01 07:55:00.0000000', '2025-08-01 17:10:00.0000000', 5),
(7, '2025-08-01 08:05:00.0000000', '2025-08-01 17:00:00.0000000', 6),
(8, '2025-08-01 08:00:00.0000000', '2025-08-01 17:15:00.0000000', 7),
(9, '2025-08-01 08:20:00.0000000', '2025-08-01 17:00:00.0000000', 8),
(10, '2025-08-01 07:50:00.0000000', '2025-08-01 17:05:00.0000000', 9),
(11, '2025-08-01 01:00:00.0000000', '2025-08-03 09:50:00.0000000', 10),
(12, '2025-08-01 01:10:00.0000000', '2025-08-02 10:10:00.0000000', 11),
(15, '2025-08-14 14:42:10.8010000', '2025-08-14 14:42:10.8010000', 12),
(17, '2025-09-25 14:58:23.4650000', '2025-09-26 14:58:23.4650000', 10),
(18, '2025-09-26 14:58:23.4650000', '2025-09-27 14:58:23.4650000', 10),
(19, '2025-09-20 15:08:59.2980000', '2025-09-20 15:08:59.2980000', 2),
(20, '2025-09-21 15:14:56.9600000', '2025-09-21 15:14:56.9600000', 2),
(21, '2025-09-22 15:14:56.9600000', '2025-09-22 15:14:56.9600000', 2),
(22, '2025-10-10 15:24:56.4530000', '2025-10-10 15:24:56.4530000', 1),
(23, '2025-10-10 15:48:54.7890000', '2025-10-10 15:48:54.7890000', 1),
(24, '2025-10-21 17:58:00.0000000', '2025-10-27 09:00:00.0000000', 1),
(25, '2025-11-01 15:56:00.0000000', '2025-11-12 15:56:00.0000000', 8),
(26, '2025-10-10 15:58:00.0000000', '2025-10-17 15:58:00.0000000', 10),
(27, '2025-10-10 16:01:00.0000000', '2025-10-11 16:01:00.0000000', 4),
(28, '2025-09-30 16:12:00.0000000', '2025-10-30 16:12:00.0000000', 3),
(29, '2025-10-22 15:49:38.7540000', '2025-10-22 15:49:38.7540000', 10),
(30, '2025-10-22 04:56:00.0000000', '2025-10-23 15:56:00.0000000', 1),
(31, '2025-10-22 16:06:00.0000000', '2025-10-24 16:06:00.0000000', 7),
(32, '2025-10-23 16:09:00.0000000', '2025-10-31 16:09:00.0000000', 6),
(33, '2025-10-23 16:11:00.0000000', '2025-10-30 16:11:00.0000000', 9),
(34, '2025-10-23 16:20:00.0000000', '2025-10-24 16:20:00.0000000', 10),
(35, '2025-10-22 16:21:00.0000000', '2025-10-28 16:21:00.0000000', 7);

SET IDENTITY_INSERT Attendances OFF;

--Fiveth

ALTER TABLE PerformanceReviews
DROP CONSTRAINT FK_PerformanceReviews_Employees_EmployeeID;

--Sixth
USE [StaffManageMG];
GO
INSERT INTO PerformanceReviews (ReviewDate, Rating, Comments, EmployeeID) VALUES
('2025-01-05 09:30:00', 5, 'Excellent work and dedication.', 1),
('2025-01-10 14:15:00', 4, 'Good improvement this month.', 2),
('2025-01-12 11:45:00', 3, 'Satisfactory performance.', 3),
('2025-01-18 10:10:00', 5, 'Outstanding teamwork and leadership.', 4),
('2025-01-22 15:25:00', 2, 'Needs better time management.', 5),

('2025-02-03 16:40:00', 4, 'Consistent progress.', 6),
('2025-02-07 08:50:00', 3, 'Meets expectations.', 7),
('2025-02-13 13:00:00', 1, 'Performance requires improvement.', 8),
('2025-02-19 09:10:00', 5, 'Great effort on recent project.', 9),
('2025-02-25 17:20:00', 4, 'Reliable and responsible.', 10),

('2025-03-01 10:05:00', 5, 'Excellent attendance record.', 11),
('2025-03-06 14:55:00', 2, 'Needs to focus more on tasks.', 12),
('2025-03-11 09:25:00', 4, 'Good collaboration with team.', 1),
('2025-03-17 16:10:00', 3, 'Average performance this month.', 2),
('2025-03-22 08:35:00', 5, 'Strong technical problem solving.', 3),

('2025-04-04 13:15:00', 4, 'Good communication skills.', 4),
('2025-04-09 09:50:00', 3, 'Stable and consistent work.', 5),
('2025-04-15 15:00:00', 2, 'Needs improvement in deadlines.', 6),
('2025-04-20 10:40:00', 5, 'Exceptional customer support.', 7),
('2025-04-27 14:30:00', 4, 'Positive attitude and teamwork.', 8),

('2025-05-03 11:45:00', 1, 'Below expected performance.', 9),
('2025-05-09 16:25:00', 5, 'Achieved all targets for the month.', 10),
('2025-05-14 10:55:00', 4, 'Shows motivation and improvement.', 11),
('2025-05-20 09:05:00', 3, 'Average performance.', 12),
('2025-05-28 15:35:00', 5, 'Excellent discipline and behavior.', 1),

('2025-06-02 14:05:00', 4, 'Working well under pressure.', 2),
('2025-06-08 08:20:00', 2, 'Needs more focus on accuracy.', 3),
('2025-06-15 12:50:00', 5, 'Exceeded expectations.', 4),
('2025-06-22 10:15:00', 3, 'Good but can still improve.', 5),
('2025-06-29 16:10:00', 4, 'Dependable team member.', 6);
--Seventh
INSERT INTO LeaveRequests (LeaveType, StartDate, EndDate, Reason, Status, EmployeeID) VALUES
('Sick Leave', '2025-01-05', '2025-01-07', 'Flu symptoms', 'Approved', 1),
('Annual Leave', '2025-01-10', '2025-01-15', 'Family trip', 'Pending', 2),
('Personal Leave', '2025-01-20', '2025-01-21', 'Personal matters', 'Rejected', 3),
('Sick Leave', '2025-02-02', '2025-02-04', 'Cold and fever', 'Approved', 4),
('Annual Leave', '2025-02-10', '2025-02-14', 'Vacation', 'Pending', 5),
('Sick Leave', '2025-03-01', '2025-03-03', 'Medical appointment', 'Approved', 6),
('Personal Leave', '2025-03-08', '2025-03-09', 'Family emergency', 'Rejected', 7),
('Annual Leave', '2025-03-15', '2025-03-20', 'Travel abroad', 'Pending', 8),
('Sick Leave', '2025-04-01', '2025-04-02', 'Flu symptoms', 'Approved', 9),
('Maternity Leave', '2025-04-05', '2025-06-30', 'Pregnancy', 'Approved', 10),

('Annual Leave', '2025-05-01', '2025-05-05', 'Holiday trip', 'Pending', 11),
('Sick Leave', '2025-05-08', '2025-05-09', 'Cold', 'Approved', 12),
('Personal Leave', '2025-05-15', '2025-05-16', 'Family matters', 'Rejected', 1),
('Annual Leave', '2025-06-01', '2025-06-05', 'Vacation', 'Pending', 2),
('Sick Leave', '2025-06-10', '2025-06-12', 'Medical checkup', 'Approved', 3),
('Personal Leave', '2025-06-15', '2025-06-16', 'Personal errands', 'Rejected', 4),
('Annual Leave', '2025-07-01', '2025-07-07', 'Summer vacation', 'Pending', 5),
('Sick Leave', '2025-07-10', '2025-07-12', 'Flu and fever', 'Approved', 6),
('Maternity Leave', '2025-08-01', '2025-10-31', 'Pregnancy leave', 'Approved', 7),
('Annual Leave', '2025-08-15', '2025-08-20', 'Family trip', 'Pending', 8);
*/
GO
INSERT INTO AuditLogs (ChangeType, ChangeDate, ChangedBy, EmployeeID) VALUES
('Insert', '2025-01-05 09:30:00', 1, 1),
('Update', '2025-01-10 14:15:00', 2, 3),
('Delete', '2025-01-12 11:45:00', 3, 2),
('Insert', '2025-01-18 10:10:00', 4, 4),
('Update', '2025-01-22 15:25:00', 5, 5),
('Insert', '2025-02-03 16:40:00', 6, 6),
('Delete', '2025-02-07 08:50:00', 7, 7),
('Update', '2025-02-13 13:00:00', 8, 8),
('Insert', '2025-02-19 09:10:00', 9, 9),
('Delete', '2025-02-25 17:20:00', 10, 10),

('Update', '2025-03-01 10:05:00', 11, 1),
('Insert', '2025-03-06 14:55:00', 12, 2),
('Delete', '2025-03-11 09:25:00', 1, 3),
('Update', '2025-03-17 16:10:00', 2, 4),
('Insert', '2025-03-22 08:35:00', 3, 5),
('Delete', '2025-04-04 13:15:00', 4, 6),
('Update', '2025-04-09 09:50:00', 5, 7),
('Insert', '2025-04-15 15:00:00', 6, 8),
('Delete', '2025-04-20 10:40:00', 7, 9),
('Update', '2025-04-27 14:30:00', 8, 10),

('Insert', '2025-05-03 11:45:00', 9, 11),
('Delete', '2025-05-09 16:25:00', 10, 12),
('Update', '2025-05-14 10:55:00', 11, 1),
('Insert', '2025-05-20 09:05:00', 12, 2),
('Delete', '2025-05-28 15:35:00', 1, 3),
('Update', '2025-06-02 14:05:00', 2, 4),
('Insert', '2025-06-08 08:20:00', 3, 5),
('Delete', '2025-06-15 12:50:00', 4, 6),
('Update', '2025-06-22 10:15:00', 5, 7),
('Insert', '2025-06-29 16:10:00', 6, 8);

