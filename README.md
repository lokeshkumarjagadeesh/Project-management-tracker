
# Project Management Tracker

This project helps you track project progress, task completion, resource utilization, and budgets. It connects Excel data to a MySQL database using Python, and visualizes everything with a dynamic dashboard in Power BI.

---

## Tools \& Technologies Used

- **Python** – for data extraction and database automation  
- **MySQL** – for storing and managing structured project data  
- **Excel** – acts as the central data source with multiple sheets  
- **Power BI** – for building interactive project dashboards

---

##  Project Overview

### Data Flow:
1. Excel contains the raw project data across 4 sheets: `Projects`, `Tasks`, `Resources`, and `Budget`.
2. A Python script reads each sheet and updates the corresponding MySQL tables.
3. Power BI connects to Excel to generate visuals and dashboards.

This structure allows you to update your Excel file, run the script, and instantly see the refreshed dashboard.

---

##  Python Script Workflow

- Reads all Excel sheets
- Clears existing MySQL table data
- Inserts new data into each table
- Reports how many rows were inserted

### Sample Output:
`
Sheets loaded: ['Projects', 'Tasks', 'Resources', 'Budget']
Connected to MySQL
Projects: old data cleared
Projects: 3 rows inserted
Tasks: 10 rows inserted
Resources: 4 rows inserted
Budget: 6 rows inserted
All sheets synced
`

---

##  Power BI Dashboard

Power BI connects to the same Excel file and displays:

- Project status overview
- Task completion by project
- Budget distribution
- Resource utilization

---

## Setup Instructions

1. Make sure you have the required libraries:
   
   `
   pip install pandas mysql-connector-python openpyxl
   `

3. Set up the project_tracker database in MySQL and create the required tables.

4. Place your Excel file in the script folder as projects.xlsx.

5. Run the Python script:
   
   `python sync_script.py`


6. Open your Power BI dashboard and refresh the data.

---

## Screenshots


![image alt](https://github.com/lokeshkumarjagadeesh/Project-management-tracker/blob/8f04d092c0a60bb6469eabb103d47d30ac5e98f7/sample%20output%20powerBI.png)



![image alt](https://github.com/lokeshkumarjagadeesh/Project-management-tracker/blob/ae74b3b8d42f7028622626c279a376d291fc55cf/sample%20output%20powerBI%202.png)
