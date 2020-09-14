SELECT name, sum(price) as 총액
from book natural join orders natural join customer
where orders.custid = customer.custid and customer.name = '박지성';