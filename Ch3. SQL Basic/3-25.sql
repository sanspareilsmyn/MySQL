SELECT name
FROM Customer
WHERE custid IN (SELECT custid FROM Orders)
UNION ALL
SELECT name
FROM Customer
WHERE address LIKE '대한민국^';