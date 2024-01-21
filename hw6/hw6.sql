# В рамках БД "песочница: онлайн-магазин" напишите след/запросы:
# Вывести сред/стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы t

SELECT AVG(Price) FROM Products
WHERE CategoryID IN (1,2,5) AND ProductName LIKE 't%';

# Посчитать стоимость заказа 10248

SELECT SUM(Products.Price) AS price_order
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE OrderID=10248;

# Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT COUNT(*) AS count_product
FROM Products
WHERE Price BETWEEN 10 AND 250;

# Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT SUM(Products.Price) AS cost_products_germany
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'Germany';

# С помощью инструмента онлайн-проектирования опишите схему БД "чат поддержки" 
# (базовые сущности и характеристики)

# https://dbdiagram.io/d/support_chat-65a7993eac844320ae1918cd
