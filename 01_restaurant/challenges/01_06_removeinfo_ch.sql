-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM Reservations R
JOIN Customers C
  ON C.CustomerID = R.CustomerID
WHERE C.FirstName = 'Norby'
  AND R.Date > '2022-07-24';

DELETE FROM Reservations
WHERE ReservationID = 2000;