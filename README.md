# Comprehensive-Sales-Analytics-and-Reporting
---

# Sales Analytics Dashboard
### Overview

This project showcases a **Sales Analytics Dashboard** built to help a fashion retail business (**Luxury Vintage**) gain insights into their performance. The dashboard integrates data processing, analytics, and visualization to inform strategic decisions, such as identifying top-selling products, high-value customers, seasonal sales trends, and more.

The workflow demonstrates the **end-to-end analytics pipeline**, including data extraction from a **SQL database**, transformation using **Excel Power Query**, and interactive visualization using **Excel Slicers**. 

## Project Workflow

1. **Data Collection**: Sales data was collected over a two-year period (2020–2021) by the business and stored in an SQL database.
   
2. **Data Processing**:
   - **SQL**: Querying the dataset for insights like revenue per product, monthly trends, top customers, and order quantity.
   - **Excel**: Cleaned, organized, and transformed the data into structured reports. Connected the SQL queries to **Excel Power Query** to automate updates.
   
3. **Data Visualization**:
   - **Excel**: Developed a comprehensive dashboard to visualize sales performance metrics such as total revenue, average revenue per sale, and customer purchasing behavior.
![LuxVin](https://github.com/user-attachments/assets/0c1e8789-7f70-4bfc-b70a-db230826099a)

## Features

- **Total Revenue**: The dashboard calculates the total revenue generated (₦675,000).
- **Sales Volume**: Total number of units sold, visualized with product-level breakdown.
- **Average Revenue Per Sale**: Shows key performance indicator (KPI) of revenue per transaction (₦5,625).
- **Unique Customers**: Count of unique customers (76) for the reporting period.
- **Product Performance**: Insights into which products perform best, with **shirts** being the highest contributor to sales.
- **Top Customers**: Visuals and data on top customers in terms of revenue contribution and quantity ordered.
- **Monthly/Yearly Sales Trends**: Trends for strategic planning, identifying peak months for sales, such as **July 2021** with ₦194,500.

## Data Analysis

The following key insights were derived:

- **Top Product**: Shirts generated ₦331,000 in revenue and accounted for 96 units sold, making them the most profitable product category.
- **Top Customers**: High-value customers such as Tar (₦32,000) and Sammy (₦29,000) were identified, allowing for targeted marketing efforts.
- **Seasonal Insights**: July 2021 saw the highest sales, indicating potential for seasonal promotions.

## Queries and Metrics

Here are the key SQL queries used for analysis:

1. **Total Revenue per Product Type**:
    ```sql
    SELECT ProductType, SUM(Revenue) AS TotalRevenue
    FROM sales
    GROUP BY ProductType;
    ```

2. **Top 10 Customers by Spend**:
    ```sql
    SELECT CustomerName, SUM(Revenue) AS TotalSpent
    FROM sales
    GROUP BY CustomerName
    ORDER BY TotalSpent DESC
    LIMIT 10;
    ```

3. **Monthly Revenue Trend**:
    ```sql
    SELECT MONTH(SaleDate) AS Month, YEAR(SaleDate) AS Year, SUM(Revenue) AS TotalRevenue
    FROM sales
    GROUP BY YEAR(SaleDate), MONTH(SaleDate)
    ORDER BY Year, Month;
    ```

## Tools Used

- **SQL**: To extract and transform data directly from the database, running queries to produce business insights.
- **Excel Power Query**: For automated data loading, transformation, and connecting to SQL.
- **Excel**: Used to create an interactive dashboard to visualize trends and KPIs, enabling data-driven decisions.

## Conclusion

This project showcases the power of integrating **SQL**, **Excel Power Query**, and **data visualization tools** to transform raw data into actionable business insights. This workflow enables businesses to monitor sales, customer trends, and product performance to drive data-driven strategies. 

Feel free to explore the repository and use the workflow as a template for your projects!
