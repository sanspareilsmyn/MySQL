/* 고객번호가 2 이하인 고객의 판매액을 보이시오(고객 이름과 고객별 판매액 출력) */
SELECT cs.name, SUM(od.saleprice) 'total'
FROM (SELECT custid, name
	  FROM Customer
      WHERE custid <= 2) cs,
      Orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;