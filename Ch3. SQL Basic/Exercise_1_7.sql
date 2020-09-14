Select name, bookname
from book natural join customer natural join orders
where customer.name != '박지성' and customer.custid = orders.custid;