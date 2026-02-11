## **Benchmark 1: Data Engineering & ETL (The Foundation)**

### **The Challenge**
The raw dataset for this project was "messy," meaning it had structural issues and formatting errors that would make it impossible to load directly into a database. I built a full **ETL (Extract, Transform, Load) pipeline** to clean, standardize, and verify the data so it would be ready for high-level analysis in MySQL

### **Troubleshooting & Solutions**

* **SQL Schema Alignment:** My initial `CREATE TABLE` script was missing the `size` column found in the raw CSV. I had to **drop the existing table and write a new DDL script** to include the missing attribute, ensuring the database schema perfectly matched the data source.
* **Standardizing Dates:** MySQL requires a specific `YYYY-MM-DD` format to read dates correctly. I used **Custom Excel Formatting** to convert the original dates into this standard, preventing the database from rejecting the records. A.K.A Data Normalization
* **Handling Missing Data:** I found **362 rows with missing customer ratings**. Rather than deleting them and losing valuable information, I filled them with a **median value (3.0)**. This kept the dataset complete while staying consistent. (A.K.A Data Imputation) 
* **Pruning "Ghost" Rows:** I cleared out over **37,000 empty rows** at the bottom of the Excel file. This significantly reduced the file size and made the database import much faster. (A.K.A Data Cleaning)
* **Record Verification:** After clearing out some accidental duplicates with a `TRUNCATE` command, I successfully verified a clean production set of **2,175 records**. (A.K.A Data Validation)

### **Current SQL Architecture**
```sql
-- Finalized schema for Project 2
CREATE TABLE retail_sales (
    product_id VARCHAR(50),
    category VARCHAR(50),
    brand VARCHAR(50),
    season VARCHAR(20),
    size VARCHAR(20),
    color VARCHAR(20),
    original_price DECIMAL(10,2),
    markdown_percentage DECIMAL(10,2),
    current_price DECIMAL(10,2),
    purchase_date DATE,
    stock_quantity INT,
    customer_rating DECIMAL(3,1),
    is_returned VARCHAR(10),
    return_reason VARCHAR(255)
);
