-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT 
   Published AS Year 
  ,COUNT(DISTINCT Title) AS PublishedCount
  ,GROUP_CONCAT(DISTINCT(Title))
FROM Books
GROUP BY Year
ORDER BY PublishedCount DESC, Year ASC;


-- Report 2: Show the five books that have been
-- checked out the most.

SELECT 
   COUNT(B.BookID) AS CheckeOutCount
  ,B.Title
  ,B.Author
FROM Loans L 
JOIN Books B 
  ON B.BookID = L.BookID
GROUP BY B.Title
ORDER BY CheckeOutCount DESC
LIMIT 5;