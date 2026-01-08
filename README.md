# 📊 Business Sales Dashboard: E-commerce Analytics

## 📌 Project Overview
This project focuses on analyzing e-commerce sales data to uncover best-selling products, sales trends, and high-revenue categories. The analysis is performed using **SQL** for data extraction and transformation and **Power BI** for visualization and business storytelling.

The final output is an interactive business sales dashboard that supports data-driven decision-making for stakeholders.

## 🎯 Objectives
* **Identify top-selling products** and high-growth categories.
* **Analyze sales trends** over time (daily, monthly, yearly).
* **Evaluate revenue contribution** by category, region, and product.
* **Track Key Performance Indicators (KPIs)** such as revenue, orders, and growth.
* **Enable business users** to interactively explore insights via slicers and filters.

## 🧰 Tools & Technologies
* **SQL (MySQL)** – Data cleaning, transformation, and aggregation.
* **Power BI** – Data modeling, DAX measures, and interactive dashboard design.
* **Excel / CSV** – Raw data source.

## 🗂️ Dataset Description
The e-commerce dataset includes the following typical fields:
* **Order ID / Date:** Unique identifiers and transaction timestamps.
* **Product Details:** Name and Category.
* **Financials:** Quantity Sold and Sales Amount (Revenue).
* **Demographics:** Customer, Region, or Country.

## 🐍 Data Cleaning Using Python
Python is used **only for cleaning and preprocessing** raw data before loading it into SQL.

### Cleaning Steps:
- Remove duplicate records
- Handle missing values
- Standardize column names
- Convert date fields to datetime format
- Validate numeric columns

### Sample Python Code
```python
import pandas as pd

df = pd.read_csv("raw_ecommerce_data.csv")

# Remove duplicates
df = df.drop_duplicates()

# Handle missing values
df = df.dropna(subset=["Order_ID", "Order_Date", "Sales_Amount"])

# Convert date column
df["Order_Date"] = pd.to_datetime(df["Order_Date"])

# Standardize column names
df.columns = df.columns.str.lower().str.replace(" ", "_")

# Save cleaned data
df.to_csv("cleaned_ecommerce_data.csv", index=False)

```

## 🛠️ Data Preparation (SQL)
SQL is used to prepare clean, analysis-ready data before loading it into Power BI.

**Key SQL Steps:**
1.  Remove duplicates and invalid records.
2.  Handle missing or null values.
3.  Convert date columns into proper formats.
4.  Create aggregated tables/views for optimized performance.

```sql
-- Total sales by category
SELECT 
    category, 
    SUM(sales_amount) AS total_sales
FROM ecommerce_sales
GROUP BY category;

-- Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month, 
    SUM(sales_amount) AS monthly_sales
FROM ecommerce_sales
GROUP BY month
ORDER BY month;
```

## 📐 Data Modeling & DAX (Power BI)
The project follows a Star Schema to ensure efficient data filtering and scalability.

**Key Metrics Created (DAX):**

Total Revenue: SUM(Sales[Sales_Amount])

Total Orders: DISTINCTCOUNT(Sales[Order_ID])

Average Order Value: DIVIDE([Total Revenue], [Total Orders])

Sales Growth %: Compares current period to previous period.

## 📊 Dashboard Features
KPI Cards: Instant view of Revenue, Orders, and Quantity.

Sales Trend: Time-series visualization of growth patterns.

Product Analysis: Top 5 and Bottom 5 performing products.

Geographic Map: Revenue distribution by region.

Interactive Slicers: Filter by Date, Category, and Region.

## 💡 Business Insights
Revenue Drivers: Identify which product categories are the most profitable.

Seasonal Trends: Discover peak sales periods to optimize marketing spend.

Operational Efficiency: Monitor average order values to improve cross-selling strategies.

## 🚀 How to Run the Project
Import the raw e-commerce data into your SQL database.

Run the provided SQL scripts to clean and aggregate the data.

Connect Power BI to your SQL database (or import the cleaned CSV).

Load the tables and ensure relationships are correctly mapped in the Model view.

Refresh the report to populate the visuals.

## 👤 Author
Jitesh  | SQL | Power BI


