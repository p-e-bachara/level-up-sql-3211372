-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT *
FROM Customers
WHERE FirstName = 'Loretta'
and LastName = 'Hundey'; --70

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00');

SELECT *
FROM Orders
WHERE CustomerID = 70
ORDER BY OrderID DESC; --1001

SELECT *
FROM Dishes
WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie'); --4,7,20

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES 
   (1001, 4)
  ,(1001, 7)
  ,(1001, 20);

SELECT SUM(D.Price)
FROM OrdersDishes OD
JOIN Dishes D
  ON D.DishID = OD.DishID
WHERE OD.OrderID = 1001;