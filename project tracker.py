import pandas as pd
import mysql.connector

# load the excel
excel_file = 'projects.xlsx'

try:
    xl = pd.read_excel(excel_file, sheet_name=None)
    print("sheets loaded:", list(xl.keys()))
except Exception as e:
    print("excel load failed:", e)
    exit()

# connect mysql
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="12345",
        database="project_tracker"
    )
    cursor = conn.cursor()
    print("connected to mysql")
except Exception as e:
    print("mysql connection failed:", e)
    exit()

# disable foreign key checks
cursor.execute("set foreign_key_checks=0")

# to see the all sheets in excel
for sheet, df in xl.items():
    df.dropna(how='all', inplace=True)
    df = df.map(lambda x: x.item() if hasattr(x, 'item') else x)

    try:
        cursor.execute(f"delete from {sheet}")
        conn.commit()
        print(sheet, ": old data cleared")
    except Exception as e:
        print(sheet, ": delete failed -", e)

    cols = ', '.join(df.columns)
    placeholders = ', '.join(['%s'] * len(df.columns))
    insert_sql = f"insert into {sheet} ({cols}) values ({placeholders})"

    for row in df.itertuples(index=False, name=None):
        try:
            cursor.execute(insert_sql, row)
        except Exception as e:
            print("insert failed in", sheet, ":", e)

    conn.commit()
    print(sheet, ":", len(df), "rows inserted")

# enable key checks again
cursor.execute("set foreign_key_checks=1")

cursor.close()
conn.close()
print("all sheets synced")
