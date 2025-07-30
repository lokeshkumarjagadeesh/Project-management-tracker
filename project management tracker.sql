create database project_tracker;
use project_tracker;
create table Projects (ProjectID int primary key,ProjectName varchar(100),Clients varchar(100),StartDate date,EndDate date,projectstatus varchar(50));
create table Tasks (TaskID int primary key,ProjectID int,TaskName varchar(100),AssignedTo varchar(100),StartDate date,EndDate date,projectStatus varchar(50),PercentComplete int,foreign key (ProjectID) references Projects(ProjectID));
create table Resources (ResourceID int primary key,ResourceName varchar(100),roles varchar(50),AvailableHours int);
create table Budget (ProjectID int,BudgetAmount decimal(10,2),SpentAmount decimal(10,2),foreign key (ProjectID) references Projects(ProjectID));
show databases;
insert into Projects (ProjectID, ProjectName, Clients, StartDate, EndDate, projectStatus) values(1, 'Sales Dashboard Automation', 'ABC Corp', '2024-01-15', '2024-03-20', 'Completed'),
(2, 'Customer Churn Analysis', 'XYZ Ltd', '2024-04-01', '2024-05-15', 'Completed'),(3, 'Marketing Campaign Analysis', 'GrowthHub', '2024-06-01', '2024-08-15', 'In Progress'),(4, 'Financial Forecasting Model', 'FinTrack', '2024-07-10', '2024-09-30', 'Not Started');
insert into Tasks (TaskID, ProjectID, TaskName, AssignedTo, StartDate, EndDate, projectStatus) values(1, 1, 'Data Cleaning in Excel', 'Kumar', '2024-01-15', '2024-01-20', 'Completed'),
(2, 1, 'Power BI Dashboard', 'Kohli', '2024-01-21', '2024-03-10', 'Completed'),(3, 2, 'Churn Data Extraction (SQL)', 'Mithin', '2024-04-01', '2024-04-07', 'Completed'),(4, 3, 'Campaign Metrics in Tableau', 'Lokesh', '2024-06-11', '2024-08-10', 'In Progress');
insert into Resources (ResourceID, ResourceName, roles, AvailableHours) values(1, 'Kumar', 'Excel Specialist', 110),(2, 'Kohli', 'Power BI Developer', 130),
(3, 'Mithin', 'SQL Analyst', 125),
(4, 'Lokesh', 'Tableau Analyst', 120);
insert into Budget (ProjectID, BudgetAmount, SpentAmount) values(1, 50000.00, 47000.00),(2, 40000.00, 38500.00),(3, 60000.00, 25000.00),
(4, 70000.00, 0.00);
select* from Projects;
select* from Tasks;
select* from resources;
select* from budget;
show tables;
alter table Tasks add column AssignedHours int;
alter table  Resources add column Timespent int;
