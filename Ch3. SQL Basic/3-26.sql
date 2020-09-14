SELECT name
FROM Customer
WHERE address LIKE '대한민국%' AND
	  name NOT IN (SELECT name
				   FROM Customer
                   WHERE custid IN (SELECT custid FROM Orders));