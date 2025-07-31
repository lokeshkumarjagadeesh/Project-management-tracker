# Project Management Tracker

A complete end-to-end system to manage and visualize project data from  MySQL to Excel to Power BI. This tracker helps organize project tasks, monitor resources, track budgets, and view project progress with visual dashboards.

---

## Tools & Technologies Used

- **Python** – for reading Excel data and inserting it into MySQL
- **MySQL** – to store structured data for projects, tasks, budgets, and resources
- **Excel** – acts as the source data file, with multiple sheets
- **Power BI** – for dashboard creation and data visualization

---

## How It Works

1. Data is maintained in an Excel file with 4 sheets: `Projects`, `Tasks`, `Resources`, and `Budget`.
2. A Python script reads this Excel file and inserts the cleaned data into MySQL.
3. Power BI connects to the same Excel file and builds interactive dashboards based on the data.

---

## Sample Output
