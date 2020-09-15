/* 각 고객의 평균 주문금액보다 큰 금액의 주문 내역에 대해서 주문번호, 고객번호, 금액을 보이시오. */
Select orderid, custid, saleprice
FROM Orders md
WHERE saleprice > (SELECT AVG(Saleprice)
				   FROM Orders so
                   WHERE md.custid = so.custid);