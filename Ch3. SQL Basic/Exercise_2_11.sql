select name, bookname
from customer natural join book natural join orders
where customer.custid = orders.custid;