select name, count(*)
from customer natural join book natural join orders
where customer.custid = orders.custid and customer.name = '박지성'