-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT
   Type
  ,Name
  ,Price
  ,Description
FROM Dishes
ORDER BY Price ASC;

SELECT
   Type
  ,Name
  ,Price
  ,Description
FROM Dishes
WHERE Type IN ('Beverage', 'Appetizer')
ORDER BY Type;

SELECT
   Type
  ,Name
  ,Price
  ,Description
FROM Dishes
WHERE Type NOT IN ('Beverage')
ORDER BY Type;