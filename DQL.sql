--1/
SELECT *
FROM Customers;
--2/
SELECT product_name, category
FROM Product
WHERE ( price BETWEEN 5000 AND 10000);
--3/ 
ORDER BY price DESC;
--4/
SELECT COUNT(*),
    AVG (total_amount),
    MAX(total_amount),
    MIN(total_amount),
    Product_id
FROM Orders
GROUP BY Product_id;
--5/
SELECT COUNT(*),
    Customer_id
FROM Orders
GROUP BY Customer_id
HAVING COUNT(*) >= 2;
--6/
SELECT COUNT(*),
    MONTH(OrderDate)
FROM Orders
WHERE YEAR=2020;
GROUP BY MONTH(OrderDate);
--7/
SELECT product_name,
    customer_name,
    OrderDate
FROM Orders
    INNER JOIN (
        Product ON Product.Product_id = Orders.Product_id,
        Customer ON Customer.Customer_id = Orders.Customer_id
    );
--8/
    SELECT *
FROM Orders
WHERE OrderDate >= DATEADD(MONTH, 3, NOW());
--9/
SELECT *
FROM Customer
    INNER JOIN(
        Orders ON Orders.Customer_id <> Customer.Customer_id
    );
