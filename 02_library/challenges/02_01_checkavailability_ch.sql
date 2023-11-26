-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT
   COUNT(DISTINCT B.Barcode) AS TotalCount
  ,SUM(CASE 
    WHEN L.ReturnedDate IS NULL THEN -1
    ELSE 0
    END) AS OnLoan
  ,COUNT(DISTINCT B.Barcode)+SUM(CASE 
    WHEN L.ReturnedDate IS NULL THEN -1
    ELSE 0
    END) AS AvailableCount
  ,B.Title
FROM Books B 
LEFT OUTER JOIN Loans L 
  ON L.BookID = B.BookID
WHERE B.Title IN ('Dracula', 'Ulysses')
GROUP BY B.Title;