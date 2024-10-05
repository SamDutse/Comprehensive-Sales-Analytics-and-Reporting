USE project;

-- Having a glimpse of what the data is
SELECT *
FROM jayvintagestore
LIMIT 5;

-- Total Revenue per Year and Month
SELECT `Order Year`, `Order Month`, SUM(Amount) AS Total_Revenue
FROM jayvintagestore
GROUP BY `Order Year`, `Order Month`
ORDER BY `Order Year`, `Order Month`;

-- Total Revenue per Year
SELECT `Order Year`, SUM(Amount) AS Total_Revenue
FROM jayvintagestore
GROUP BY `Order Year`
ORDER BY `Order Year`;

-- Total Revenue per Month
SELECT `Order Month`, SUM(Amount) AS Total_Revenue
FROM jayvintagestore
GROUP BY `Order Month`
ORDER BY `Order Month`;

-- Top 5 Customers by Revenue:
SELECT `Customer Name`, SUM(Amount) AS Total_Spent
FROM jayvintagestore
GROUP BY `Customer Name`
ORDER BY Total_Spent DESC
LIMIT 5;

-- Average Revenue per Customer:
SELECT `Customer Name`, AVG(Amount) AS Avg_Revenue
FROM jayvintagestore
GROUP BY `Customer Name`;

-- Top 10 Average Revenue per Customer:
SELECT `Customer Name`, ROUND(AVG(Amount), 2) AS Avg_Revenue
FROM jayvintagestore
GROUP BY `Customer Name`
ORDER BY Avg_Revenue DESC
lIMIT 10;

-- Product Popularity by Order Quantity:
SELECT Product, SUM(`Ordered Quantity`) AS Total_Ordered
FROM jayvintagestore
GROUP BY Product
ORDER BY Total_Ordered DESC;

-- Revenue by Product Type:
SELECT Product, SUM(Amount) AS Revenue
FROM jayvintagestore
GROUP BY Product
ORDER BY Revenue DESC;


-- Monthly Sales Trend for Each Year:
SELECT `Order Year`, `Order Month`, SUM(Amount) AS Monthly_Sales
FROM jayvintagestore
GROUP BY `Order Year`, `Order Month`
ORDER BY `Order Year`, `Order Month`;
