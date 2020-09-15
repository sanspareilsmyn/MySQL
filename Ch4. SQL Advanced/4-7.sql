/* 평균 주문 금액 이하의 주문에 대해서 주문번호와 금액을 보이시오. */
SELECT orderid, saleprice
FROM Orders
WHERE saleprice <= (SELECT AVG(saleprice)
					FROM Orders);