SELECT SUM(saleprice) 'total'
FROM Orders
WHERE custid IN (select custid
				from customer
				where address like '%대한민국%');