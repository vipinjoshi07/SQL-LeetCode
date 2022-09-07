SELECT name as Customers
FROM Customers
WHERE id NOT IN
(SELECT c.id
FROM Customers c
RIGHT JOIN Orders o
ON c.id = o.customerId)