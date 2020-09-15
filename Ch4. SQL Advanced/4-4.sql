/* 데이터 용량이 크면 부속질의가 조인보다 성능이 좋다 */
/* 마당서점의 고객별 판매액을 보이시오 */
SELECT custid, (SELECT name
				FROM Customer cs
                WHERE cs.custid = od.custid), SUM(saleprice)
FROM Orders od
GROUP BY custid;