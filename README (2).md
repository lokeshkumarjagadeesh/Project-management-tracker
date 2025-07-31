
# 📊 Project Management Tracker

This project helps you track project progress, task completion, resource allocation, and budgets — all in one place. It connects Excel data to a MySQL database using Python, and visualizes everything with a dynamic dashboard in Power BI.

---

## 🔧 Technologies Used

- **Python** – for data extraction and database automation  
- **MySQL** – for storing and managing structured project data  
- **Excel** – acts as the central data source with multiple sheets  
- **Power BI** – for building interactive project dashboards

---

## 📁 Project Overview

### Data Flow:
1. Excel contains the raw project data across 4 sheets: `Projects`, `Tasks`, `Resources`, and `Budget`.
2. A Python script reads each sheet and updates the corresponding MySQL tables.
3. Power BI connects to Excel to generate visuals and dashboards.

This structure allows you to update your Excel file, run the script, and instantly see the refreshed dashboard.

---

## 🧾 Excel Sheets

- `Projects` → Tracks project names, timelines, and status
- `Tasks` → Contains task details and deadlines
- `Resources` → Lists team members and roles
- `Budget` → Tracks estimated and actual expenses

---

## ⚙️ MySQL Table Structure

Each Excel sheet maps to a MySQL table. Here’s a simple outline:

### `Projects`
| Column       | Data Type     |
|--------------|----------------|
| project_id   | INT (Primary Key) |
| project_name | VARCHAR(100)   |
| start_date   | DATE           |
| end_date     | DATE           |
| status       | VARCHAR(50)    |

### `Tasks`
| Column       | Data Type     |
|--------------|----------------|
| task_id      | INT (Primary Key) |
| project_id   | INT (Foreign Key) |
| task_name    | VARCHAR(100)   |
| assigned_to  | VARCHAR(100)   |
| due_date     | DATE           |
| status       | VARCHAR(50)    |

### `Resources`
| Column       | Data Type     |
|--------------|----------------|
| resource_id  | INT (Primary Key) |
| name         | VARCHAR(100)   |
| role         | VARCHAR(100)   |
| cost         | DECIMAL(10,2)  |

### `Budget`
| Column       | Data Type     |
|--------------|----------------|
| budget_id    | INT (Primary Key) |
| project_id   | INT (Foreign Key) |
| category     | VARCHAR(100)   |
| amount       | DECIMAL(10,2)  |

---

## 🐍 Python Script Workflow

The script performs the following:

- Reads all Excel sheets
- Clears existing MySQL table data
- Inserts new data into each table
- Reports how many rows were inserted

### Sample Output:
```
Sheets loaded: ['Projects', 'Tasks', 'Resources', 'Budget']
Connected to MySQL
Projects: old data cleared
Projects: 3 rows inserted
Tasks: 10 rows inserted
Resources: 4 rows inserted
Budget: 6 rows inserted
All sheets synced
```

---

## 📊 Power BI Dashboard

Power BI connects to the same Excel file and displays:

- Project status overview
- Task completion by project
- Budget distribution
- Resource utilization

> Replace this with a real screenshot in GitHub:
> ![Power BI Dashboard Preview](images/dashboard_sample.png)

---

## 🛠️ Setup Instructions

1. Make sure you have the required libraries:
   ```bash
   pip install pandas mysql-connector-python openpyxl
   ```

2. Set up the `project_tracker` database in MySQL and create the required tables.

3. Place your Excel file in the script folder as `projects.xlsx`.

4. Run the Python script:
   ```bash
   python sync_script.py
   ```

5. Open your Power BI dashboard and refresh the data.

---

## 💡 Key Learnings

- Built a real-time project management system
- Learned how to integrate Excel, MySQL, Python, and Power BI
- Automated data handling between tools
- Created clean, interactive dashboards

---

## 🧑‍💻 Author

This project was built as part of a learning journey to understand data pipelines and dashboard development.

Feel free to improve, expand, or adapt it for your own needs.
