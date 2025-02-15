-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT L.DueDate, P.FirstName, P.Email, B.Barcode, B.Title
FROM Loans L 
JOIN Patrons P 
  ON P.PatronID = L.PatronID
JOIN Books B 
  ON B.BookID = L.BookID
WHERE L.ReturnedDate IS NULL
  AND L.DueDate = '2022-07-13'
  ORDER BY P.Email;