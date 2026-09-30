USE amazon;
SELECT COUNT(DISTINCT OrderID) AS total_orders
FROM amazon;
SELECT COUNT(DISTINCT CustomerID) AS unique_cutomers
FROM amazon;
SELECT COUNT(DISTINCT ProductID) AS unique_products
FROM amazon;
SELECT COUNT(DISTINCT Category) AS unique_categories
FROM amazon;
SELECT COUNT(DISTINCT Brand) AS unique_brands
FROM amazon;
SELECT COUNT(DISTINCT SellerID) AS unique_sellerID
FROM amazon;
SELECT COUNT(DISTINCT PaymentMethod) AS payment_method_count
FROM amazon.amazon;
SELECT COUNT(DISTINCT orderstatus) AS total_orders_count
FROM amazon.amazon;
SELECT COUNT(DISTINCT state) AS total_state_count
FROM amazon.amazon;
SELECT SUM(TotalAmount) AS total_sales_amount
FROM amazon.amazon;
SELECT AVG(TotalAmount) AS average_order_value
FROM amazon.amazon;
SELECT MIN(TotalAmount) AS minimum_order_amount
FROM amazon.amazon;
SELECT MAX(TotalAmount) AS maximum_order_amount
FROM amazon.amazon;
SELECT SUM(Quantity) AS total_quantity_sold
FROM amazon.amazon;
SELECT AVG(Quantity) AS average_quantity_per_order
FROM amazon.amazon;
SELECT SUM(Discount) AS total_Discount
FROM amazon.amazon;
SELECT AVG(Discount) AS AVG_Discount
FROM amazon.amazon;
SELECT SUM(Tax) AS total_tax
FROM amazon.amazon;
SELECT SUM(ShippingCost) AS total_shipping_cost
FROM amazon.amazon;
SELECT  ProductID,   COUNT(DISTINCT OrderID) AS total_orders
FROM amazon.amazon
GROUP BY ProductID;
SELECT ProductID,SUM(TotalAmount) AS total_sales
FROM amazon.amazon
GROUP BY ProductID
ORDER BY total_sales DESC
LIMIT 1;
SELECT ProductName, SUM(Quantity) AS quantity_sold
FROM amazon.amazon
GROUP BY ProductID
ORDER BY Quantity_sold DESC
LIMIT 1;
SELECT AVG(UnitPrice) AS AVG_unit_price
FROM amazon.amazon
GROUP BY ProductID;
SELECT ProductName,Avg(Discount) AS AVG_DISCOUNT
FROM amazon.amazon
GROUP BY ProductName
ORDER BY AVG_DISCOUNT DESC
LIMIT 1;
SELECT ProductName,SUM(DISCOUNT) AS total_discount
FROM amazon.amazon
GROUP BY ProductName
ORDER BY total_discount
LIMIT 1;
SELECT Category,COUNT(DISTINCT ProductID) AS different_products
FROM amazon.amazon
GROUP BY Category;
SELECT category,AVG(unitprice) AS aerage_selling_price
FROM amazon.amazon
GROUP BY category;
SELECT SUM( TotalAmount) AS total_sales_amount
FROM amazon.amazon
GROUP BY category;
SELECT  category,SUM(Quantity) AS total_quantity_sold
FROM amazon.amazon
GROUP BY Category;
SELECT Category,SUM( TotalAmount) AS total_sales
FROM amazon.amazon
GROUP BY Category
ORDER BY total_sales DESC
LIMIT 1;
SELECT Category,SUM(Quantity) AS total_quantity_sold
FROM amazon.amazon
GROUP BY Category
ORDER BY total_quantity_sold DESC
LIMIT 1;
SELECT Category,AVG(TotalAmount) AS avg_order_value
FROM amazon.amazon
GROUP BY Category;
SELECT category,SUM(Discount) AS total_discount
FROM amazon.amazon
GROUP BY Category;
SELECT Brand,SUM(TotalAmount) AS total_sales_amount
FROM amazon.amazon
GROUP BY Brand;
SELECT Brand,COUNT( DISTINCT ProductName) AS product_count
FROM Amazon.amazon
GROUP BY Brand; 
SELECT CustomerName,COUNT(DISTINCT OrderID) AS total_orders
FROM amazon.amazon
GROUP BY CustomerName;
SELECT CustomerId,SUM(TotalAmount) AS total_amount
FROM amazon.amazon
GROUP BY CustomerID;
SELECT CustomerID,CustomerName,SUM(TotalAmount) AS Totalspend
FROM amazon.amazon
GROUP BY customerID,CustomerName
ORDER BY totalspend DESC
LIMIT 5;
SELECT City,SUM(TotalAmount) AS total_sales_amount
FROM amazon.amazon
GROUP BY City;
SELECT City,COUNT(DISTINCT TotalAmount) AS total_sales
FROM amazon.amazon
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1;
SELECT State,SUM(TotalAmount) AS total_sales
FROM amazon.amazon
GROUP BY state;
SELECT State,SUM(TotalAmount) AS total_sales
FROM amazon.amazon
GROUP BY State
ORDER BY total_sales DESC
LIMIT 1;
SELECT PaymentMethod,SUM(TotalAmount) AS Total_Sales_Amount
FROM amazon.amazon
GROUP BY PaymentMethod;
SELECT OrderStatus,COUNT(DISTINCT OrderID) AS total_orders
FROM amazon.amazon
GROUP BY OrderStatus;














