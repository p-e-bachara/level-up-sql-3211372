-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT *
FROM Reservations R
JOIN Customers C
  ON C.CustomerID = R.CustomerID
WHERE R.PartySize = 4
  AND LastName LIKE 'st%'
ORDER BY R.Date DESC;