--Вывести страны, в которых ко-во клиентов от 10 до 20 (вкл.)

SELECT 
Country,
count(CustomerID) as TotalCustomers
FROM Customers
group by Country
having count(CustomerID) between 10 and 20;



--Вывести ТОП-3 стран по ко-ву клиентов

SELECT 
Country,
COUNT(CustomerID) AS CountCustomer
FROM Customers
GROUP BY Country
ORDER BY CountCustomer DESC
LIMIT 3;

--Вывести имена клиентов, у которых два и более заказов

SELECT 
CustomerName
FROM Customers
WHERE CustomerID in (
SELECT
CustomerID
FROM Orders
GROUP BY CustomerID
HAVING count(OrderID) >= 2
);