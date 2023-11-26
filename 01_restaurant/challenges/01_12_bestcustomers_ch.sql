-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT 
   COUNT(*) AS OrderCount
  ,C.FirstName
  ,C.LastName
  ,C.Email
FROM
  Customers C 
JOIN Orders O 
  ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID
HAVING OrderCount >= 13
ORDER BY OrderCount DESC;