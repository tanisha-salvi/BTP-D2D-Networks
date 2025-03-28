import sqlite3
import xlsxwriter

# Connect to the database
db_filename = "default-nr-prose-unicast-single-link.db"
conn = sqlite3.connect(db_filename)
cursor = conn.cursor()

# Get all table names
cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = cursor.fetchall()

# Extract and save each table’s contents
for table in tables:
    table_name = table[0]  # Extract table name
    cursor.execute(f"SELECT * FROM {table_name};")  # Fetch all data
    rows = cursor.fetchall()
    
    # Get column names
    col_names = [description[0] for description in cursor.description]
    
    # Write to a text file
    filename_txt = f"{table_name}.txt"
    with open(filename_txt, "w", encoding="utf-8") as f:
        # Format and write column headers
        header = "  ".join(col_names)
        f.write(header + "\n")
        f.write("-" * len(header) + "\n")  # Separator line
        
        # Format and write each row
        for row in rows:
            formatted_row = "  ".join(str(value) for value in row)
            f.write(formatted_row + "\n")
    
    print(f"Data from '{table_name}' saved to '{filename_txt}'")
    
    # Write to an Excel file
    filename_xlsx = f"{table_name}.xlsx"
    workbook = xlsxwriter.Workbook(filename_xlsx)
    worksheet = workbook.add_worksheet()
    
    # Write column headers
    for col_num, col_name in enumerate(col_names):
        worksheet.write(0, col_num, col_name)
    
    # Write data rows
    for row_num, row in enumerate(rows, start=1):
        for col_num, cell in enumerate(row):
            worksheet.write(row_num, col_num, cell)
    
    workbook.close()
    print(f"Data from '{table_name}' saved to '{filename_xlsx}'")

# Close connection
conn.close()
