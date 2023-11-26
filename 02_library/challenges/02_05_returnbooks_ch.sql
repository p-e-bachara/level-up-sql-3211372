-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

SELECT *
FROM Loans L 
JOIN Books B 
  ON B.BookID = L.BookID
WHERE L.ReturnedDate IS NULL
  AND B.Barcode IN (6435968624, 5677520613, 8730298424);

UPDATE Loans
  SET ReturnedDate = '2022-07-05'
  WHERE LoanID IN (
    SELECT LoanID
    FROM Loans L 
    JOIN Books B 
      ON B.BookID = L.BookID
    WHERE L.ReturnedDate IS NULL
      AND B.Barcode IN (6435968624, 5677520613, 8730298424)
  );

SELECT *
FROM Loans L 
JOIN Books B 
  ON B.BookID = L.BookID
WHERE B.Barcode IN (6435968624, 5677520613, 8730298424)
  AND L.ReturnedDate = '2022-07-05';