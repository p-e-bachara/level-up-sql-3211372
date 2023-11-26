-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT
   COUNT(L.PatronID) AS BorrowedCount
  ,P.FirstName
  ,P.Email
FROM Loans L 
JOIN Patrons P 
  ON P.PatronID = L.PatronID
GROUP BY L.PatronID
HAVING BorrowedCount <= 13
ORDER BY BorrowedCount ASC;